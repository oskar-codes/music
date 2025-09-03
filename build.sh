#!/bin/bash

rm -rf ./out
mkdir ./out

total_start_time=`date +%s%N | cut -b1-13`

check_error()
{
  ret=$?
  COLOR='\033[0;37\033[0;41m'
  NC='\033[0m' # No Color
  if [ $ret -ne 0 ]; then
    echo -e "${COLOR}Received non-zero ($ret) exit code. Cleaning up and shutting down.${NC}"
    clean_up
    exit 1
  fi
}

pre_processing()
{
  f=$1
  start_time=`date +%s%N | cut -b1-13`
  pre=$(node processing/pre-processing.js -file="$f")
  check_error
  end_time=`date +%s%N | cut -b1-13`

  echo "   - Pre-processing done. (`expr $end_time - $start_time`ms)"
}

parsing()
{
  start_time=`date +%s%N | cut -b1-13`
  html=$(cmark-gfm <<< "$pre" -e footnotes -e table -e strikethrough -e autolink -e tagfilter -e tasklist --unsafe)
  check_error
  echo "$html" > out/tmp/.tmp_html.html
  end_time=`date +%s%N | cut -b1-13`

  echo "   - cmark-gfm done. (`expr $end_time - $start_time`ms)"
}

post_processing()
{
  start_time=`date +%s%N | cut -b1-13`
  post=$(node processing/post-processing.js -file="out/tmp/.tmp_html.html")
  check_error
  echo "$post" > out/tmp/.tmp_body.html
  end_time=`date +%s%N | cut -b1-13`

  echo "   - Post-processing done. (`expr $end_time - $start_time`ms)"
}

clean_up()
{
  rm out/tmp/.tmp_header.html 2> /dev/null
  rm out/tmp/.tmp_body.html 2> /dev/null
  rm out/tmp/.tmp_footer.html 2> /dev/null
  rm out/tmp/.tmp_html.html 2> /dev/null
  rmdir out/tmp 2> /dev/null
}

# Recursively compile markdown files, keeping the same structure
find src -name "*.md" | while read f; do
  rel="${f#src/}"               # relative path under src
  out="out/music/${rel%.md}.html"     # change .md -> .html
  mkdir -p "$(dirname "$out")"
  mkdir -p out/tmp

  echo "-> $f"

  # Run pre-processing (markdown -> markdown)
  pre_processing $f

  # Run parsing (markdown -> html)
  parsing

  # Run post-processing (html -> html)
  post_processing

  # Split template
  head -n -3 template/template.html > out/tmp/.tmp_header.html
  tail -n 2 template/template.html > out/tmp/.tmp_footer.html

  # Insert content between
  cat out/tmp/.tmp_header.html out/tmp/.tmp_body.html out/tmp/.tmp_footer.html > "$out"

  # Clean up
  clean_up

done


# Except for template/template.html, copy
# all files of template/ to out/, keeping the same structure
echo "-> Copying template files."
start_time=`date +%s%N | cut -b1-13`

find template -type f ! -name "template.html" | while read f; do
  rel="${f#template/}"          # relative path under template
  out="out/music/${rel}"              # output path under out
  mkdir -p "$(dirname "$out")"
  cp "$f" "$out"
done

end_time=`date +%s%N | cut -b1-13`
echo "   - Done in `expr $end_time - $start_time`ms."

# Print total time
total_end_time=`date +%s%N | cut -b1-13`
echo "Build finished in `expr $total_end_time - $total_start_time`ms."

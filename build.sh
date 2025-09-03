rm -rf ./out
mkdir ./out

# Recursively compile markdown files, keeping the same structure
find src -name "*.md" | while read f; do
  rel="${f#src/}"               # relative path under src
  out="out/music/${rel%.md}.html"     # change .md -> .html
  mkdir -p "$(dirname "$out")"
  mkdir -p out/tmp

  # Run pre-processing (markdown -> markdown)
  echo "-> $f"
  pre=$(node processing/pre-processing.js -file="$f")
  echo "   - Pre-processing done."

  # Run parsing (markdown -> html)
  html=$(cmark-gfm <<< "$pre" -e footnotes -e table -e strikethrough -e autolink -e tagfilter -e tasklist --unsafe)
  echo "$html" > out/tmp/.tmp_html.html
  echo "   - cmark-gfm done."

  # Run post-processing (html -> html)
  post=$(node processing/post-processing.js -file="out/tmp/.tmp_html.html")
  echo "$post" > out/tmp/.tmp_body.html
  echo "   - Post-processing done."

  # Split template
  head -n -3 template/template.html > out/tmp/.tmp_header.html
  tail -n 2 template/template.html > out/tmp/.tmp_footer.html

  # Insert content between
  cat out/tmp/.tmp_header.html out/tmp/.tmp_body.html out/tmp/.tmp_footer.html > "$out"

  # Clean up
  rm out/tmp/.tmp_header.html
  rm out/tmp/.tmp_body.html
  rm out/tmp/.tmp_footer.html
  rm out/tmp/.tmp_html.html
  rmdir out/tmp

done

# Except for template/template.html, copy
# all files of template/ to out/, keeping the same structure
find template -type f ! -name "template.html" | while read f; do
  rel="${f#template/}"          # relative path under template
  out="out/music/${rel}"              # output path under out
  mkdir -p "$(dirname "$out")"
  cp "$f" "$out"
done

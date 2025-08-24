rm -rf ./out
mkdir ./out

# Recursively compile markdown files, keeping the same structure
find src -name "*.md" | while read f; do
  rel="${f#src/}"               # relative path under src
  out="out/${rel%.md}.html"     # change .md -> .html
  mkdir -p "$(dirname "$out")"
  cmark-gfm "$f" > out/.tmp_body.html -e footnotes -e table -e strikethrough -e autolink -e tagfilter -e tasklist --unsafe

  # inject into template
  # awk -v r="$content" '{gsub(/{{CONTENT}}/, r)}1' template/template.html > "$out"

  head -n -3 template/template.html > out/.tmp_header.html
  tail -n 2 template/template.html > out/.tmp_footer.html

  cat out/.tmp_header.html out/.tmp_body.html out/.tmp_footer.html > "$out"

  rm out/.tmp_header.html
  rm out/.tmp_body.html
  rm out/.tmp_footer.html

done

# Except for template/template.html, copy
# all files of template/ to out/, keeping the same structure
find template -type f ! -name "template.html" | while read f; do
  rel="${f#template/}"          # relative path under template
  out="out/${rel}"              # output path under out
  mkdir -p "$(dirname "$out")"
  cp "$f" "$out"
done

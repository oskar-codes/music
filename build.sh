rm -rf ./out
mkdir ./out

# Recursively compile markdown files, keeping the same structure
find src -name "*.md" | while read f; do
  rel="${f#src/}"               # relative path under src
  out="out/${rel%.md}.html"     # change .md -> .html
  mkdir -p "$(dirname "$out")"
  content=$(cmark-gfm "$f")
  # inject into template
  sed "s|{{CONTENT}}|$content|" template/template.html > "$out"
done

# Include CSS
cp template/github-markdown.css out

#!/bin/bash

# README.md generator for book notes

output="README.md"

cat > "$output" << 'EOF'
# Book Notes

A collection of book summaries organized by year.

EOF

# Process directories in order: pre-2000 first, then years
dirs=$(ls -d */ | sort -V)

for dir in $dirs; do
  dir_name=$(echo "$dir" | sed 's/\///')
  files=$(ls "$dir"*.md 2>/dev/null | sort)

  if [ -z "$files" ]; then
    continue
  fi

  echo "" >> "$output"
  echo "## $dir_name" >> "$output"
  echo "" >> "$output"

  for file in $files; do
    # Extract title (first line with #)
    title=$(grep -m1 '^# ' "$file" | sed 's/^# //')

    # Extract authors (line with **Authors**:)
    authors=$(grep -m1 '\*\*Authors\*\*:' "$file" | sed 's/.*\*\*Authors\*\*: //' | sed 's/ |.*//')

    # Relative link path
    link="$file"

    if [ -n "$title" ] && [ -n "$authors" ]; then
      echo "- **[$title]($link)** - $authors" >> "$output"
    fi
  done
done

echo "Generated $output"
echo "Total books: $(grep -c '^\- \*\*\[' "$output")"

#!/bin/bash

# README.md generator for book notes

output="README.md"

cat > "$output" << 'EOF'
# Book Notes

A collection of book summaries organized by year.

EOF

# Process directories: years in reverse (recent first), pre-2000 at end
dirs=$(ls -d */ | grep -v "^pre-2000/$" | sort -Vr)
dirs="$dirs pre-2000/"

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

    # Extract authors using Python (handles various formats)
    authors=$(python3 - "$file" << 'PYEOF'
import sys
import re
with open(sys.argv[1], 'r') as f:
    for line in f:
        if '**Author' in line and ('**Author**:' in line or '**Authors**:' in line):
            match = re.search(r'\*\*Authors?\*\*: ([^|]+)', line)
            if match:
                print(match.group(1).strip())
                break
PYEOF
)

    # Relative link path
    link="$file"

    if [ -n "$title" ] && [ -n "$authors" ]; then
      echo "- **[$title]($link)** - $authors" >> "$output"
    fi
  done
done

echo "Generated $output"
echo "Total books: $(grep -c '^\- \*\*\[' "$output")"

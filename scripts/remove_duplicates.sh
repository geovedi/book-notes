#!/bin/bash

# Script to find and remove duplicate book files (keeping first occurrence)

# Create a temporary file to track seen titles
temp_seen=$(mktemp)
temp_keep=$(mktemp)
temp_remove=$(mktemp)

# First pass: find all files and their titles
find . -maxdepth 2 -name "*.md" | sort | while read file; do
  # Skip scripts and README
  if [[ "$file" == *"README.md" ]] || [[ "$file" == *".sh" ]] || [[ "$file" == *"/scripts/"* ]]; then
    continue
  fi

  # Extract title from content
  title=$(grep -m1 '^# ' "$file" | sed 's/^# //')

  if [ -n "$title" ]; then
    echo "$file|$title" >> "$temp_seen"
  fi
done

# Find duplicates and mark for removal
awk -F'|' '
{
  title = $2
  file = $1
  if (seen[title]++) {
    print file > "'"$temp_remove"'"
  } else {
    print file > "'"$temp_keep"'"
  }
}
' "$temp_seen"

# Show what will be removed
count=$(wc -l < "$temp_remove" 2>/dev/null || echo "0")
echo "Found $count duplicate files to remove"

if [ "$count" -gt 0 ]; then
  echo ""
  echo "Files to REMOVE:"
  cat "$temp_remove"
  echo ""
  echo "Removing..."
  xargs rm -f < "$temp_remove"
  echo "Removed $count files"
fi

# Cleanup
rm -f "$temp_seen" "$temp_keep" "$temp_remove"

#!/bin/bash

# Script to remove fuzzy duplicates using similarity scoring

temp_all=$(mktemp)
temp_remove=$(mktemp)

echo "Scanning for fuzzy duplicates..."

# Get all book files
find . -maxdepth 2 -name "*.md" | sort | while read file; do
  # Skip scripts and README
  if [[ "$file" == *"README.md" ]] || [[ "$file" == *".sh" ]] || [[ "$file" == *"/scripts/"* ]]; then
    continue
  fi

  # Extract title and year from content
  title=$(grep -m1 '^# ' "$file" | sed 's/^# //' | tr '[:upper:]' '[:lower:]')
  year=$(grep -m1 '\*\*Year\*\*:' "$file" | sed 's/.*\*\*Year\*\*: //' | sed 's/[^0-9].*//')

  if [ -n "$title" ] && [ -n "$year" ]; then
    # Remove subtitle after dash or colon
    title=$(echo "$title" | sed 's/ -.*//;s/ :.*//')
    echo "$file|$title|$year" >> "$temp_all"
  fi
done

# Python script for fuzzy matching
python3 - "$temp_all" "$temp_remove" << 'PYTHON_SCRIPT'
import sys
from difflib import SequenceMatcher

def similar(a, b):
    return SequenceMatcher(None, a, b).ratio()

# Read all files
files = []
with open(sys.argv[1], 'r') as f:
    for line in f:
        parts = line.strip().split('|')
        if len(parts) >= 3:
            files.append((parts[0], parts[1], parts[2]))

# Find duplicates using fuzzy matching
to_remove = []

for i, (file1, title1, year1) in enumerate(files):
    if file1 in to_remove:
        continue

    for j, (file2, title2, year2) in enumerate(files):
        if i >= j or file2 in to_remove:
            continue

        # Check similarity (85% threshold)
        similarity = similar(title1, title2)

        if similarity >= 0.85:
            # Same or similar title - keep earliest year
            if int(year1) <= int(year2):
                to_remove.append(file2)
                print(f"DUPLICATE: {file2}")
                print(f"  Similar to: {file1}")
                print(f"  Titles: '{title1}' vs '{title2}' (similarity: {similarity:.2f})")
                print(f"  Years: {year1} vs {year2}")
            else:
                to_remove.append(file1)
                print(f"DUPLICATE: {file1}")
                print(f"  Similar to: {file2}")
                print(f"  Titles: '{title1}' vs '{title2}' (similarity: {similarity:.2f})")
                print(f"  Years: {year1} vs {year2}")
                break

# Write removal list
with open(sys.argv[2], 'w') as f:
    for item in set(to_remove):
        f.write(item + '\n')

print(f"\nTotal duplicates to remove: {len(set(to_remove))}")
PYTHON_SCRIPT

# Remove files
count=$(wc -l < "$temp_remove" 2>/dev/null || echo "0")

if [ "$count" -gt 0 ]; then
  echo ""
  echo "Removing $count files..."
  xargs rm -f < "$temp_remove"
  echo "Done!"
else
  echo "No fuzzy duplicates found."
fi

# Cleanup
rm -f "$temp_all" "$temp_remove"

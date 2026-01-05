#!/bin/bash

# Optimized script to remove fuzzy duplicates
# Groups by title length to reduce comparisons from O(n²) to O(n)

temp_all=$(mktemp)
temp_remove=$(mktemp)

echo "Scanning for fuzzy duplicates (optimized)..."

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
    # Get title length for grouping
    title_len=${#title}
    echo "$file|$title|$year|$title_len" >> "$temp_all"
  fi
done

# Optimized Python script using length-based grouping
python3 - "$temp_all" "$temp_remove" << 'PYTHON_SCRIPT'
import sys
from difflib import SequenceMatcher

def similar(a, b):
    return SequenceMatcher(None, a, b).ratio()

# Read all files
books = []
with open(sys.argv[1], 'r') as f:
    for line in f:
        parts = line.strip().split('|')
        if len(parts) >= 4:
            books.append((parts[0], parts[1], int(parts[2]), int(parts[3])))

# Group by title length (within ±3 characters)
length_groups = {}
for book in books:
    file, title, year, length = book
    # Group key is length rounded to nearest 5
    group_key = (length // 5) * 5
    if group_key not in length_groups:
        length_groups[group_key] = []
    length_groups[group_key].append(book)

# Find duplicates within each length group
to_remove = []
seen = {}

for group_key, group_books in length_groups.items():
    for i, (file1, title1, year1, len1) in enumerate(group_books):
        if file1 in to_remove:
            continue

        # Check against other books in this length group
        for j, (file2, title2, year2, len2) in enumerate(group_books):
            if i >= j or file2 in to_remove:
                continue

            # Only compare if lengths are similar (within 10%)
            length_diff = abs(len1 - len2)
            if length_diff > max(len1, len2) * 0.1:
                continue

            # Check similarity (85% threshold)
            similarity = similar(title1, title2)

            if similarity >= 0.85:
                # Same or similar title - keep earliest year
                if year1 <= year2:
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
print(f"Comparisons made: {sum(len(g) * (len(g)-1) // 2 for g in length_groups.values())}")
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

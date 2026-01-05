#!/bin/bash

# Script to fix files with mismatched years between filename and content

count=0

find . -maxdepth 2 -name "*.md" | sort | while read file; do
  # Extract year from filename
  file_year=$(basename "$file" | sed 's/-.*//g' | sed 's/^0*//;s/^$/0/')

  # Skip if this is the README or script file
  if [[ "$file" == *"README.md" ]] || [[ "$file" == *".sh" ]]; then
    continue
  fi

  # Extract year from content
  content_year=$(grep -m1 '\*\*Year\*\*:' "$file" | sed 's/.*\*\*Year\*\*: //' | sed 's/[^0-9].*//')

  # Normalize content_year
  if [ -n "$content_year" ]; then
    content_year=$(echo "$content_year" | sed 's/[^0-9].*//')

    # Compare years
    if [ "$file_year" != "$content_year" ] && [ -n "$content_year" ]; then
      # Determine target directory
      if [ "$content_year" -lt 2000 ]; then
        target_dir="pre-2000"
      else
        target_dir="$content_year"
      fi

      # Get filename without year prefix
      rest_of_name=$(basename "$file" | sed 's/^[0-9]*-//')

      # New filename
      new_file="$target_dir/${content_year}-${rest_of_name}"

      # Create target dir if needed
      mkdir -p "$target_dir"

      # Move file
      echo "Moving: $file -> $new_file"
      mv "$file" "$new_file"
      count=$((count + 1))
    fi
  fi
done

echo "Done! Moved $count files"

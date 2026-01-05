#!/bin/bash
find . -maxdepth 2 -name "*.md" | while read file; do
  # Extract year from filename
  file_year=$(basename "$file" | sed 's/-.*//g' | sed 's/^0*//;s/^$/0/')
  
  # Extract year from content
  content_year=$(grep -m1 '\*\*Year\*\*:' "$file" | sed 's/.*\*\*Year\*\*: //' | sed 's/[^0-9].*//')
  
  # Normalize content_year (handle BC, BCE, CE, etc.)
  if [ -n "$content_year" ]; then
    content_year=$(echo "$content_year" | sed 's/[^0-9].*//')
    
    # Compare years
    if [ "$file_year" != "$content_year" ]; then
      echo "$file | filename: $file_year | content: $content_year"
    fi
  fi
done

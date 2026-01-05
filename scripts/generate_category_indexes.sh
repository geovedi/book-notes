#!/bin/bash

# Generate separate index files for each category

# Define categories
categories=(
    "Technology & Computing"
    "Business & Finance"
    "Psychology & Mental Health"
    "Fiction & Literature"
    "Horror & Thriller"
    "Romance & Relationships"
    "Science & Nature"
    "History & Biography"
    "Philosophy & Critical Thinking"
    "Health & Medicine"
    "Fantasy & Science Fiction"
    "Self-Help & Personal Development"
    "Children & Young Adult"
    "Art & Creativity"
    "Spirituality & Religion"
)

# Create indexes directory
mkdir -p by-category

# Process each category
for category in "${categories[@]}"; do
    # Create safe filename from category name
    filename=$(echo "$category" | sed 's/ & / and /g' | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | sed 's/[^a-z0-9-]//g')
    index_file="by-category/${filename}.md"

    # Find books in this category
    temp_file=$(mktemp)
    find . -maxdepth 2 -name "*.md" | xargs grep -l "\\*\\*Category\\*\\*: $category" 2>/dev/null | sort > "$temp_file"
    count=$(wc -l < "$temp_file")

    if [ "$count" -gt 0 ]; then
        # Generate index file
        cat > "$index_file" << EOF
# $category

A collection of $count books in this category.

---

EOF

        # Group by year
        current_year=""
        while read file; do
            # Extract title
            title=$(grep -m1 '^# ' "$file" | sed 's/^# //')

            # Extract authors
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

            # Extract year
            year=$(grep -m1 '\*\*Year\*\*:' "$file" | sed 's/.*\*\*Year\*\*: //' | sed 's/[^0-9].*//')

            # Add year header if changed
            if [ "$year" != "$current_year" ]; then
                echo "" >> "$index_file"
                if [ -z "$year" ]; then
                    echo "## Unknown Year" >> "$index_file"
                else
                    echo "## $year" >> "$index_file"
                fi
                echo "" >> "$index_file"
                current_year="$year"
            fi

            # Add book entry
            link="$file"
            if [ -n "$title" ] && [ -n "$authors" ]; then
                echo "- **[$title](../$link)** - $authors" >> "$index_file"
            fi
        done < "$temp_file"

        echo "" >> "$index_file"
        echo "---" >> "$index_file"
        echo "" >> "$index_file"
        echo "*[$count books](../README.md) - [Back to Categories](../README.md)*" >> "$index_file"

        echo "Generated: $index_file ($count books)"
    fi

    rm -f "$temp_file"
done

# Generate main README
cat > "README.md" << 'EOF'
# Book Notes

A collection of book summaries organized by category.

**Total:** 3445 books | **Categorized:** 3213 books

---

## Categories

EOF

# Add category links to README
for category in "${categories[@]}"; do
    filename=$(echo "$category" | tr '[:upper:]' '[:lower:]' | tr ' ' '-' | tr '&' 'and' | sed 's/[^a-z0-9-]//g')
    index_file="by-category/${filename}.md"

    if [ -f "$index_file" ]; then
        count=$(grep -c '^-' "$index_file" || echo "0")
        echo "- **[$category]($index_file)** - $count books" >> README.md
    fi
done

cat >> "README.md" << 'EOF'

---

## Uncategorized

Books that haven't been categorized yet:

EOF

# Add uncategorized books
temp_file=$(mktemp)
find . -maxdepth 2 -name "*.md" | xargs grep -L '\*\*Category\*\*:' 2>/dev/null | grep -v "README.md" | grep -v "/scripts/" | grep -v "/by-category/" | sort > "$temp_file"
uncount=$(wc -l < "$temp_file")

if [ "$uncount" -gt 0 ]; then
    while read file; do
        title=$(grep -m1 '^# ' "$file" | sed 's/^# //')
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
        link="$file"
        if [ -n "$title" ] && [ -n "$authors" ]; then
            echo "- **[$title]($file)** - $authors" >> README.md
        fi
    done < "$temp_file"
else
    echo "All books are categorized!" >> README.md
fi

rm -f "$temp_file"

cat >> "README.md" << 'EOF'

---

*Generated on $(date +%Y-%m-%d)*
EOF

echo ""
echo "Generated README.md"
echo "Total categories: ${#categories[@]}"

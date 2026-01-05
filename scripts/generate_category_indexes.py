#!/usr/bin/env python3
"""
Generate separate index files for each category.
"""

import os
import re
from collections import defaultdict

# Define categories
CATEGORIES = [
    "Technology & Computing",
    "Business & Finance",
    "Psychology & Mental Health",
    "Fiction & Literature",
    "Horror & Thriller",
    "Romance & Relationships",
    "Science & Nature",
    "History & Biography",
    "Philosophy & Critical Thinking",
    "Health & Medicine",
    "Fantasy & Science Fiction",
    "Self-Help & Personal Development",
    "Children & Young Adult",
    "Art & Creativity",
    "Spirituality & Religion",
]

def extract_authors(filepath):
    """Extract authors from markdown file."""
    try:
        with open(filepath, 'r') as f:
            for line in f:
                if '**Author' in line and ('**Author**:' in line or '**Authors**:' in line):
                    match = re.search(r'\*\*Authors?\*\*: ([^|]+)', line)
                    if match:
                        return match.group(1).strip()
    except:
        pass
    return "Unknown"

def extract_year(filepath):
    """Extract year from markdown file, fallback to filename."""
    try:
        with open(filepath, 'r') as f:
            for line in f:
                if '**Year**:' in line:
                    match = re.search(r'\*\*Year\*\*: (\d{4})', line)
                    if match:
                        return int(match.group(1))
    except:
        pass

    # Fallback: extract year from filename
    match = re.search(r'/(\d{4})-', filepath)
    if match:
        return int(match.group(1))

    return 0  # Put unknown year at the end

def extract_title(filepath):
    """Extract title from markdown file."""
    try:
        with open(filepath, 'r') as f:
            for line in f:
                if line.startswith('# '):
                    return line[2:].strip()
    except:
        pass
    return os.path.basename(filepath)

def get_all_books():
    """Get all books with their categories."""
    books_by_category = defaultdict(list)

    for root, dirs, files in os.walk('.'):
        # Skip certain directories
        if '/.git/' in root or '/scripts/' in root or '/by-category/' in root:
            continue

        for filename in files:
            if not filename.endswith('.md'):
                continue

            filepath = os.path.join(root, filename)

            # Skip README
            if filename == 'README.md':
                continue

            # Extract category
            try:
                with open(filepath, 'r') as f:
                    for line in f:
                        if '**Category**:' in line:
                            for cat in CATEGORIES:
                                if f'**Category**: {cat}' in line:
                                    books_by_category[cat].append(filepath)
                                    break
                            break
            except:
                pass

    return books_by_category

def slugify(category):
    """Convert category name to safe filename."""
    slug = category.lower()
    slug = slug.replace(' & ', ' and ')
    slug = slug.replace(' ', '-')
    slug = re.sub(r'[^a-z0-9-]', '', slug)
    return slug

def generate_indexes():
    """Generate category index files."""
    os.makedirs('by-category', exist_ok=True)

    books_by_category = get_all_books()

    for category in CATEGORIES:
        books = books_by_category.get(category, [])
        if not books:
            continue

        # Sort by year, then by title
        books_with_data = []
        for book in books:
            year = extract_year(book)
            title = extract_title(book)
            authors = extract_authors(book)
            # Skip if no year found
            if year > 0:
                books_with_data.append((year, title, book, authors))

        books_with_data.sort(key=lambda x: (-x[0], x[1]))  # Descending year, then title

        # Write index file
        slug = slugify(category)
        index_file = f'by-category/{slug}.md'

        with open(index_file, 'w') as f:
            f.write(f'# {category}\n\n')
            f.write(f'A collection of {len(books_with_data)} books in this category.\n\n')
            f.write('---\n\n')

            current_year = None
            for year, title, filepath, authors in books_with_data:
                # Add year header
                if year != current_year:
                    f.write(f'\n## {year}\n\n')
                    current_year = year

                # Relative link
                relpath = filepath[2:] if filepath.startswith('./') else filepath

                f.write(f'- **[{title}]({relpath})** - {authors}\n')

            f.write(f'\n---\n\n')
            f.write(f'*[{len(books_with_data)} books](../README.md) - [Back to Categories](../README.md)*\n')

        print(f'Generated: {index_file} ({len(books)} books)')

def generate_readme():
    """Generate main README.md."""
    books_by_category = get_all_books()

    with open('README.md', 'w') as f:
        f.write('# Book Notes\n\n')
        f.write('A collection of book summaries organized by category.\n\n')

        total_books = sum(len(books) for books in books_by_category.values())
        f.write(f'**Total:** {total_books} books\n\n')
        f.write('---\n\n')
        f.write('## Categories\n\n')

        for category in CATEGORIES:
            books = books_by_category.get(category, [])
            if books:
                slug = slugify(category)
                f.write(f'- **[{category}](by-category/{slug}.md)** - {len(books)} books\n')

        f.write('\n---\n\n')
        f.write('*All books are categorized!*')

if __name__ == '__main__':
    generate_indexes()
    print()
    generate_readme()
    print()
    print(f'Total categories: {len(CATEGORIES)}')

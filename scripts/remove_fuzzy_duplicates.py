#!/usr/bin/env python3
"""
Remove fuzzy duplicate books based on title similarity.
Groups by title length to reduce comparisons from O(n²) to O(n).
"""

import os
import re
from difflib import SequenceMatcher
from collections import defaultdict


def similar(a, b):
    """Calculate similarity ratio between two strings."""
    return SequenceMatcher(None, a, b).ratio()


def extract_title(filepath):
    """Extract title from markdown file."""
    try:
        with open(filepath, 'r') as f:
            for line in f:
                if line.startswith('# '):
                    title = line[2:].strip().lower()
                    # Remove subtitle after dash or colon
                    title = re.sub(r' -.*', '', title)
                    title = re.sub(r' :.*', '', title)
                    return title
    except:
        pass
    return None


def extract_year(filepath):
    """Extract year from markdown file."""
    try:
        with open(filepath, 'r') as f:
            for line in f:
                if '**Year**:' in line:
                    match = re.search(r'\*\*Year\*\*: (\d{4})', line)
                    if match:
                        return int(match.group(1))
    except:
        pass
    return None


def get_all_books():
    """Get all books with their titles and years."""
    books = []

    for root, dirs, files in os.walk('.', topdown=True):
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

            # Extract title and year
            title = extract_title(filepath)
            year = extract_year(filepath)

            if title and year:
                title_len = len(title)
                books.append((filepath, title, year, title_len))

    return books


def find_duplicates(books):
    """Find fuzzy duplicate books using length-based grouping."""
    # Group by title length (rounded to nearest 5)
    length_groups = defaultdict(list)
    for book in books:
        file, title, year, length = book
        group_key = (length // 5) * 5
        length_groups[group_key].append(book)

    # Find duplicates within each length group
    to_remove = set()

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
                        to_remove.add(file2)
                        print(f"DUPLICATE: {file2}")
                        print(f"  Similar to: {file1}")
                        print(f"  Titles: '{title1}' vs '{title2}' (similarity: {similarity:.2f})")
                        print(f"  Years: {year1} vs {year2}")
                    else:
                        to_remove.add(file1)
                        print(f"DUPLICATE: {file1}")
                        print(f"  Similar to: {file2}")
                        print(f"  Titles: '{title1}' vs '{title2}' (similarity: {similarity:.2f})")
                        print(f"  Years: {year1} vs {year2}")
                    break

    return to_remove, length_groups


def main():
    """Main function to find and remove fuzzy duplicates."""
    print("Scanning for fuzzy duplicates (optimized)...")

    books = get_all_books()
    print(f"Found {len(books)} books to check\n")

    if not books:
        print("No books found.")
        return

    to_remove, length_groups = find_duplicates(books)

    # Calculate total comparisons made
    comparisons = sum(len(g) * (len(g) - 1) // 2 for g in length_groups.values())
    print(f"\nComparisons made: {comparisons}")

    if to_remove:
        print(f"\nTotal duplicates to remove: {len(to_remove)}")
        print("\nRemoving files...")
        for filepath in to_remove:
            try:
                os.remove(filepath)
                print(f"  Removed: {filepath}")
            except Exception as e:
                print(f"  Error removing {filepath}: {e}")
        print("Done!")
    else:
        print("\nNo fuzzy duplicates found.")


if __name__ == '__main__':
    main()

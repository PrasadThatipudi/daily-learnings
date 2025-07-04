#!/bin/bash

set -euo pipefail

# Check input
if [[ $# -lt 1 ]]; then
  echo "❌ Usage: $0 <file-path.md> [YYYY-MM-DD]"
  exit 1
fi

file_path="$1"
date_value="${2:-$(date +%Y-%m-%d)}"

# Ensure .md extension
if [[ "$file_path" != *.md ]]; then
  echo "❌ Error: File must have a .md extension"
  exit 2
fi

# Extract raw title
file_name=$(basename "$file_path")
raw_title="${file_name%.md}"

# Convert hyphens/underscores to spaces and capitalize each word
title=$(echo "${raw_title//[-_]/ }" | awk '{for (i=1; i<=NF; i++) $i=toupper(substr($i,1,1)) substr($i,2)} 1')

# Create parent directories
mkdir -p "$(dirname "$file_path")"

# Create file with capitalized title
cat > "$file_path" <<EOF
# $title

**Date**: $date_value  
**Tags**: #tag1 #tag2

## 🔍 What I Learned

...

## 🧪 Examples

...

## 🧠 Reflections / Notes to Self

...

## 🔗 References

- [Link 1](...)
- [Link 2](...)
EOF

echo "✅ Created note: $file_path with title: \"$title\""

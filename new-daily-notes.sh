#!/bin/bash

set -euo pipefail

# Check for at least one argument
if [[ $# -lt 1 ]]; then
  echo "❌ Usage: $0 \"Title Case Name\" [YYYY-MM-DD]"
  exit 1
fi

title="$1"
date_value="${2:-$(date +%Y-%m-%d)}"

# Convert title to kebab-case
kebab_title=$(echo "$title" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9 ]//g' | sed -E 's/ +/-/g')

# Final filename with date prefix
filename="${date_value}-${kebab_title}.md"
filepath="daily/${filename}"

# Create directory if needed
mkdir -p "daily"

# Create file with template
cat > "$filepath" <<EOF
# $title

**Date**: $date_value  
**Tags**: #daily #tag1

## ✅ What I learned today

...

## 🔥 Things to revisit

...

## 🧠 Reflections

...

## 🔗 References

- [Link 1](...)
EOF

echo "✅ Daily note created: $filepath"

#!/bin/bash

# Create directory structure
mkdir -p programming/{javascript,typescript,deno} tools systems daily templates

# Create root files
cat > README.md <<EOF
# 🧠 Personal Learnings Vault

This repository contains all my technical learnings, organized by topic and tracked over time.

- ✅ Uses plain Markdown
- ✅ Works well with Obsidian or VSCode
- ✅ Easily versioned and published
EOF

cat > notes-index.md <<EOF
# 🗂 Notes Index

Quick links to all my major topics.

## Programming
- [JavaScript](./programming/javascript/)
- [TypeScript](./programming/typescript/)
- [Deno](./programming/deno/)

## Tools
- [Git](./tools/git.md)
- [VSCode](./tools/vscode.md)

## Systems
- [Linux](./systems/linux.md)

## Daily Notes
- [2025-07-03](./daily/2025-07-03.md)
EOF

# Programming - JavaScript
cat > programming/javascript/syntax.md <<EOF
# JavaScript Syntax

**Date**: 2025-07-03  
**Tags**: #javascript

## 🧠 Summary

Learned basic syntax rules including semicolons, variable declarations, and scoping.

## 🔗 Resources

- [MDN JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide)
EOF

cat > programming/javascript/promises.md <<EOF
# JavaScript Promises

**Date**: 2025-07-03  
**Tags**: #javascript #async

## 🔍 What I Learned

- What a Promise is
- \`then()\` / \`catch()\` chaining
- \`async\` / \`await\` pattern

## 🔗 Resources

- [JavaScript.info on Promises](https://javascript.info/promise-basics)
EOF

# Programming - TypeScript
cat > programming/typescript/type-narrowing.md <<EOF
# Type Narrowing in TypeScript

**Date**: 2025-07-03  
**Tags**: #typescript

## 💡 Concepts

- \`typeof\` and \`in\` operator
- Custom type guards
EOF

# Programming - Deno
cat > programming/deno/tasks.md <<EOF
# Deno Task Runner

**Date**: 2025-07-03  
**Tags**: #deno

## 🧠 Summary

How to define and run custom tasks using \`deno.json\`.

## Example

\`\`\`json
{
  "tasks": {
    "start": "deno run main.ts"
  }
}
\`\`\`
EOF

# Tools
cat > tools/git.md <<EOF
# Git Essentials

**Date**: 2025-07-03  
**Tags**: #git

## Commands

- \`git status\`
- \`git commit\`
- \`git log\`
EOF

cat > tools/vscode.md <<EOF
# VSCode Tips

**Date**: 2025-07-03  
**Tags**: #vscode

## Shortcuts

- \`Cmd + P\`: Quick file open
- \`Cmd + Shift + L\`: Multi-cursor
EOF

# Systems
cat > systems/linux.md <<EOF
# Linux Basics

**Date**: 2025-07-03  
**Tags**: #linux

## Commands

- \`ls\`
- \`cd\`
- \`grep\`
EOF

# Daily Note
cat > daily/2025-07-03.md <<EOF
# 📝 Daily Note — 2025-07-03

## ✅ What I learned today

- JS Promises chaining
- Git command refresh
- Created a PKM vault

## 🔥 Things to revisit

- Type guards in TypeScript
EOF

# Template
cat > templates/learning-note-template.md <<EOF
# <Topic Title>

**Date**: YYYY-MM-DD  
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

echo "✅ PKM directory and files created with sample content!"

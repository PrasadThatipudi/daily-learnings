#!/bin/bash

# Create directory structure using brace expansion
mkdir -p programming/{javascript,typescript,deno} tools systems daily templates

# Create files
touch README.md notes-index.md

# Programming files
touch programming/javascript/{syntax.md,promises.md}
touch programming/typescript/type-narrowing.md
touch programming/deno/tasks.md

# Tools
touch tools/{git.md,vscode.md}

# Systems
touch systems/linux.md

# Daily notes
touch daily/2025-07-03.md

# Templates
touch templates/learning-note-template.md

echo "📁 PKM structure created successfully!"

curl https://raw.githubusercontent.com/PrasadThatipudi/daily-learnings/refs/heads/main/new-daily-notes.sh > new-daily-notes.sh
curl https://raw.githubusercontent.com/PrasadThatipudi/daily-learnings/refs/heads/main/new-learning-template.sh > new-learning-template.sh
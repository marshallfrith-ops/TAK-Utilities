#!/bin/bash
# TAK-Utilities GitHub Setup & Helper Script
# Repo: https://github.com/marshallfrith-ops/TAK-Utilities
# Author: Marshall Frith

set -e  # Exit on error

# ===================== CONFIGURATION =====================
GITHUB_USER="marshallfrith-ops"
REPO_NAME="TAK-Utilities"
REPO_URL="https://github.com/${GITHUB_USER}/${REPO_NAME}.git"
BRANCH="main"

# Project directories
PROJECT_DIR="$HOME/TAK-Utilities"
# ========================================================

echo "🚀 TAK-Utilities GitHub Setup"
echo "Repo: $REPO_URL"
echo "========================================"

# Create project directory
mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR"

# Initialize git if not already done
if [ ! -d .git ]; then
    echo "Initializing git repository..."
    git init
    git branch -M "$BRANCH"
    git remote add origin "$REPO_URL"
    echo "✅ Git initialized and connected to $REPO_URL"
else
    echo "✅ Git repository already exists"
fi

# Create basic structure
echo "Creating project structure..."
mkdir -p scripts docs icons plugins

# Sample README
cat > README.md << EOF
# TAK-Utilities

Utility scripts, tools, and resources for TAK/ATAK, WinTAK, and related geospatial/defense workflows.

## Features
- ATAK icon imports
- Data pipeline helpers
- Geospatial utilities
- Drone/SAR integration scripts

## Quick Start
\`\`\`bash
./setup-tak-utils.sh
\`\`\`

## License
MIT
EOF

echo "✅ Basic files created"

# Initial commit
if [ -z "$(git status --porcelain)" ]; then
    echo "No changes to commit."
else
    git add .
    git commit -m "Initial commit: Project structure + README"
    echo "✅ Initial commit created"
fi

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin "$BRANCH" || echo "⚠️  Push failed. Make sure the repo exists on GitHub and you have push access."

echo ""
echo "🎉 Setup complete!"
echo "Repository: $REPO_URL"
echo "Local path: $PROJECT_DIR"
echo ""
echo "Next steps:"
echo "   1. Add your scripts to the 'scripts/' folder"
echo "   2. Commit & push regularly: git add . && git commit -m 'msg' && git push"
echo "   3. Consider adding a .gitignore for Python, logs, etc."

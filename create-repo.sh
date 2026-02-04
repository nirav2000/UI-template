#!/bin/bash

# Interactive repository creation script
# This script will open GitHub in your browser and wait for you to create the repo

set -e

echo "=========================================="
echo "UI-template Repository Creator"
echo "=========================================="
echo ""

# Repository details
REPO_NAME="UI-template"
REPO_OWNER="nirav2000"
REPO_URL="https://github.com/$REPO_OWNER/$REPO_NAME.git"
GITHUB_NEW_REPO_URL="https://github.com/new"

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Step 1: Create the repository on GitHub${NC}"
echo ""
echo "I will open GitHub in your browser..."
echo "Please create a new repository with these settings:"
echo ""
echo "  Repository name: $REPO_NAME"
echo "  Description: A visual UI Design System Generator"
echo "  Visibility: Public (or Private if you prefer)"
echo "  ⚠️  DO NOT check any initialization options"
echo "     (no README, .gitignore, or license)"
echo ""

# Try to open the browser
if command -v xdg-open &> /dev/null; then
    echo "Opening browser..."
    xdg-open "$GITHUB_NEW_REPO_URL" 2>/dev/null || true
elif command -v open &> /dev/null; then
    echo "Opening browser..."
    open "$GITHUB_NEW_REPO_URL" 2>/dev/null || true
else
    echo "Please open this URL manually:"
    echo "$GITHUB_NEW_REPO_URL"
fi

echo ""
echo -e "${YELLOW}Waiting for you to create the repository...${NC}"
echo "Press ENTER once you've created the repository..."
read -r

echo ""
echo -e "${BLUE}Step 2: Pushing code to GitHub${NC}"
echo ""

# Try to push
if git push -u origin main 2>&1; then
    echo ""
    echo "=========================================="
    echo -e "${GREEN}Success! 🎉${NC}"
    echo "=========================================="
    echo ""
    echo "Your repository is now live at:"
    echo -e "${GREEN}https://github.com/$REPO_OWNER/$REPO_NAME${NC}"
    echo ""
    echo "Next steps:"
    echo "  1. cd /home/user/UI-template-repo"
    echo "  2. npm install"
    echo "  3. npm run dev"
    echo ""
else
    echo ""
    echo -e "${YELLOW}Push failed. Trying with authentication...${NC}"
    echo ""
    echo "Please enter your GitHub Personal Access Token:"
    echo "(or press Ctrl+C to cancel)"
    read -s TOKEN
    echo ""

    if [ -n "$TOKEN" ]; then
        git push "https://$TOKEN@github.com/$REPO_OWNER/$REPO_NAME.git" main -u
        echo ""
        echo "=========================================="
        echo -e "${GREEN}Success! 🎉${NC}"
        echo "=========================================="
        echo ""
        echo "Your repository is now live at:"
        echo -e "${GREEN}https://github.com/$REPO_OWNER/$REPO_NAME${NC}"
        echo ""
    else
        echo -e "${YELLOW}No token provided. Please push manually with:${NC}"
        echo "git push -u origin main"
    fi
fi

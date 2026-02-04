#!/bin/bash

# UI-template Repository Setup Script
# This script helps create the GitHub repository and push the code

set -e

echo "=========================================="
echo "UI-template Repository Setup"
echo "=========================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Repository details
REPO_NAME="UI-template"
REPO_OWNER="nirav2000"
REPO_URL="https://github.com/$REPO_OWNER/$REPO_NAME.git"
GITHUB_TOKEN="${GITHUB_TOKEN:-}"

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo -e "${RED}Error: package.json not found. Please run this script from the UI-template-repo directory.${NC}"
    exit 1
fi

echo "📦 Repository: $REPO_OWNER/$REPO_NAME"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo -e "${RED}Error: Git repository not initialized${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} Git repository initialized"

# Check if we have commits
if ! git rev-parse HEAD >/dev/null 2>&1; then
    echo -e "${RED}Error: No commits found${NC}"
    exit 1
fi

echo -e "${GREEN}✓${NC} Initial commit exists"

# Check if remote is configured
if ! git remote get-url origin >/dev/null 2>&1; then
    echo "Adding remote origin..."
    git remote add origin "$REPO_URL"
fi

echo -e "${GREEN}✓${NC} Remote configured: $REPO_URL"
echo ""

# Function to create repository using gh CLI
create_with_gh() {
    echo "Attempting to create repository with GitHub CLI..."
    if command -v gh &> /dev/null; then
        gh repo create "$REPO_NAME" \
            --public \
            --source=. \
            --remote=origin \
            --description="A visual UI Design System Generator to create and export design specifications for consistent app development" \
            --push

        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✓${NC} Repository created and pushed successfully!"
            return 0
        else
            echo -e "${YELLOW}⚠${NC} Failed to create repository with gh CLI"
            return 1
        fi
    else
        echo -e "${YELLOW}⚠${NC} GitHub CLI (gh) not installed"
        return 1
    fi
}

# Function to create repository using API
create_with_api() {
    echo "Attempting to create repository with GitHub API..."

    if [ -z "$GITHUB_TOKEN" ]; then
        echo -e "${YELLOW}⚠${NC} GITHUB_TOKEN environment variable not set"
        return 1
    fi

    RESPONSE=$(curl -s -X POST https://api.github.com/user/repos \
        -H "Authorization: Bearer $GITHUB_TOKEN" \
        -H "Accept: application/vnd.github.v3+json" \
        -H "Content-Type: application/json" \
        -d "{
            \"name\": \"$REPO_NAME\",
            \"description\": \"A visual UI Design System Generator to create and export design specifications for consistent app development\",
            \"private\": false,
            \"has_issues\": true,
            \"has_projects\": true,
            \"has_wiki\": true
        }")

    if echo "$RESPONSE" | grep -q '"full_name"'; then
        echo -e "${GREEN}✓${NC} Repository created successfully!"
        return 0
    else
        echo -e "${YELLOW}⚠${NC} Failed to create repository via API"
        echo "Response: $RESPONSE"
        return 1
    fi
}

# Function to push to repository
push_to_repo() {
    echo ""
    echo "Pushing code to GitHub..."

    if [ -n "$GITHUB_TOKEN" ]; then
        # Use token for authentication
        git push "https://$GITHUB_TOKEN@github.com/$REPO_OWNER/$REPO_NAME.git" main -u
    else
        # Use default authentication
        git push -u origin main
    fi

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓${NC} Code pushed successfully!"
        return 0
    else
        echo -e "${RED}✗${NC} Failed to push code"
        return 1
    fi
}

# Main execution
echo "=========================================="
echo "Starting setup process..."
echo "=========================================="
echo ""

# Try different methods to create the repository
SUCCESS=false

# Method 1: Try gh CLI
if create_with_gh; then
    SUCCESS=true
fi

# Method 2: Try API (if gh CLI failed)
if [ "$SUCCESS" = false ] && create_with_api; then
    SUCCESS=true
    # If API succeeded, we still need to push
    push_to_repo
fi

# If automated methods failed, provide manual instructions
if [ "$SUCCESS" = false ]; then
    echo ""
    echo "=========================================="
    echo -e "${YELLOW}Manual Setup Required${NC}"
    echo "=========================================="
    echo ""
    echo "Please create the repository manually:"
    echo ""
    echo "1. Visit: https://github.com/new"
    echo "2. Repository name: $REPO_NAME"
    echo "3. Description: A visual UI Design System Generator"
    echo "4. Make it Public (or Private if you prefer)"
    echo "5. DO NOT initialize with README, .gitignore, or license"
    echo "6. Click 'Create repository'"
    echo ""
    echo "After creating the repository, run:"
    echo ""
    echo -e "  ${GREEN}git push -u origin main${NC}"
    echo ""
    echo "Or if you have a GitHub token:"
    echo ""
    echo -e "  ${GREEN}git push https://YOUR_TOKEN@github.com/$REPO_OWNER/$REPO_NAME.git main${NC}"
    echo ""
    exit 1
fi

# Success!
echo ""
echo "=========================================="
echo -e "${GREEN}Setup Complete!${NC}"
echo "=========================================="
echo ""
echo "Your repository is now live at:"
echo -e "${GREEN}https://github.com/$REPO_OWNER/$REPO_NAME${NC}"
echo ""
echo "Next steps:"
echo "1. npm install          # Install dependencies"
echo "2. npm run dev          # Start development server"
echo "3. Open http://localhost:5173 in your browser"
echo ""
echo "Happy coding! 🚀"

#!/usr/bin/env python3
"""
GitHub Repository Creator
Attempts to create the UI-template repository using the GitHub API
"""

import json
import subprocess
import sys
import urllib.request
import urllib.error

# Repository configuration
REPO_NAME = "UI-template"
REPO_OWNER = "nirav2000"
REPO_DESCRIPTION = "A visual UI Design System Generator to create and export design specifications for consistent app development"
GITHUB_API_URL = "https://api.github.com/user/repos"

def create_repository(token):
    """Create repository using GitHub API"""

    data = {
        "name": REPO_NAME,
        "description": REPO_DESCRIPTION,
        "homepage": "https://github.com",
        "private": False,
        "has_issues": True,
        "has_projects": True,
        "has_wiki": True,
        "auto_init": False
    }

    headers = {
        "Authorization": f"Bearer {token}",
        "Accept": "application/vnd.github.v3+json",
        "Content-Type": "application/json"
    }

    try:
        req = urllib.request.Request(
            GITHUB_API_URL,
            data=json.dumps(data).encode('utf-8'),
            headers=headers,
            method='POST'
        )

        with urllib.request.urlopen(req) as response:
            result = json.loads(response.read().decode('utf-8'))
            return True, result.get('html_url', f"https://github.com/{REPO_OWNER}/{REPO_NAME}")

    except urllib.error.HTTPError as e:
        error_body = e.read().decode('utf-8')
        try:
            error_data = json.loads(error_body)
            return False, error_data.get('message', str(e))
        except:
            return False, str(e)
    except Exception as e:
        return False, str(e)

def push_to_repository(token=None):
    """Push code to GitHub repository"""

    if token:
        remote_url = f"https://{token}@github.com/{REPO_OWNER}/{REPO_NAME}.git"
    else:
        remote_url = "origin"

    try:
        result = subprocess.run(
            ['git', 'push', remote_url, 'main', '-u'],
            capture_output=True,
            text=True,
            check=True
        )
        return True, "Code pushed successfully!"
    except subprocess.CalledProcessError as e:
        return False, e.stderr

def main():
    print("=" * 50)
    print("UI-template Repository Creator")
    print("=" * 50)
    print()

    # Get token
    token = None
    if len(sys.argv) > 1:
        token = sys.argv[1]
    else:
        print("Please enter your GitHub Personal Access Token:")
        print("(or press Ctrl+C to cancel)")
        token = input().strip()

    if not token:
        print("\n❌ No token provided. Exiting.")
        print("\nTo create the repository manually:")
        print("1. Visit: https://github.com/new")
        print(f"2. Repository name: {REPO_NAME}")
        print(f"3. Description: {REPO_DESCRIPTION}")
        print("4. Click 'Create repository' (don't initialize with any files)")
        print("5. Run: git push -u origin main")
        sys.exit(1)

    # Try to create repository
    print(f"\n📦 Creating repository: {REPO_OWNER}/{REPO_NAME}")
    success, message = create_repository(token)

    if success:
        print(f"✅ Repository created successfully!")
        print(f"🔗 URL: {message}")
        print()

        # Try to push
        print("📤 Pushing code to repository...")
        push_success, push_message = push_to_repository(token)

        if push_success:
            print(f"✅ {push_message}")
            print()
            print("=" * 50)
            print("🎉 Success!")
            print("=" * 50)
            print()
            print(f"Your repository is now live at:")
            print(f"https://github.com/{REPO_OWNER}/{REPO_NAME}")
            print()
            print("Next steps:")
            print("  1. npm install")
            print("  2. npm run dev")
            print("  3. Open http://localhost:5173")
            print()
            sys.exit(0)
        else:
            print(f"⚠️  Push failed: {push_message}")
            print()
            print("Try pushing manually:")
            print(f"  git push https://YOUR_TOKEN@github.com/{REPO_OWNER}/{REPO_NAME}.git main")
            sys.exit(1)
    else:
        print(f"❌ Failed to create repository: {message}")
        print()

        if "Resource not accessible" in message or "403" in message:
            print("⚠️  Your token doesn't have the 'repo' scope.")
            print()
            print("To fix this:")
            print("1. Visit: https://github.com/settings/tokens")
            print("2. Create a new token with 'repo' scope")
            print("3. Run this script again with the new token")
            print()

        print("Or create the repository manually:")
        print("1. Visit: https://github.com/new")
        print(f"2. Repository name: {REPO_NAME}")
        print(f"3. Description: {REPO_DESCRIPTION}")
        print("4. Click 'Create repository' (don't initialize with any files)")
        print("5. Run: git push -u origin main")
        print()
        sys.exit(1)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\n❌ Cancelled by user")
        sys.exit(1)
    except Exception as e:
        print(f"\n❌ Unexpected error: {e}")
        sys.exit(1)

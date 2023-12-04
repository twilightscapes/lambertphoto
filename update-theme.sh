#!/bin/bash

# Set the URL of your central repository
THEME_REPO_URL="https://github.com/piratesocial/pirate.git"

# Set the branch or tag you want to pull updates from
BRANCH_OR_TAG="main"

# Create src directory if it doesn't exist
mkdir -p src

# Fetch theme files dynamically
curl -LJO "$THEME_REPO_URL/archive/$BRANCH_OR_TAG.zip"

# Unzip the downloaded theme files
unzip -o "$BRANCH_OR_TAG.zip" -d src

# Clean up
rm -f "$BRANCH_OR_TAG.zip"

echo "Theme updated successfully!"

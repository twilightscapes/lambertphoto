#!/bin/bash

# Set the URL of your central repository
THEME_REPO_URL="https://github.com/piratesocial/pirate.git"

# Set the branch or tag you want to pull updates from
BRANCH_OR_TAG="main"

# Temporarily store the user's changes (optional)
mv src user_src_backup

# Clone the central repository
git clone --branch $BRANCH_OR_TAG --depth 1 $THEME_REPO_URL tmp_theme

# Ensure the destination directories exist
mkdir -p src public

# Replace the src and public folders
rm -rf src public
mv tmp_theme/src .
mv tmp_theme/public .

# Copy the package.json file
cp tmp_theme/package.json .

echo "Theme updated successfully!"

# Clean up
rm -rf tmp_theme
rm -rf user_src_backup

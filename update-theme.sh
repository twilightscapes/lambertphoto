#!/bin/bash

# Set the URL of your central repository
THEME_REPO_URL="https://github.com/piratesocial/pirate.git"

# Set the branch or tag you want to pull updates from
BRANCH_OR_TAG="main"

# Debug statement
echo "Starting update process..."

# Clone the central repository
git clone --branch $BRANCH_OR_TAG --depth 1 $THEME_REPO_URL tmp_theme

# Debug statement
echo "Cloned central repository..."

# Replace the src folder
rm -rf src
mv tmp_theme/src .

# Debug statement
echo "Replaced src folder..."

# Clean up
rm -rf tmp_theme

echo "Theme updated successfully!"

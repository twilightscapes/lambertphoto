#!/bin/bash

# Set the URL of your central repository
THEME_REPO_URL="https://github.com/piratesocial/pirate.git"

# Set the branch or tag you want to pull updates from
BRANCH_OR_TAG="main"

# Log file
LOG_FILE="update-theme.log"

# Debug statement
echo "Starting update process..."

# Clone the central repository
echo "Cloning central repository..."
git clone --branch $BRANCH_OR_TAG --depth 1 $THEME_REPO_URL tmp_theme >> $LOG_FILE 2>&1

# Replace the src folder
echo "Replacing src folder..."
rm -rf src
mv tmp_theme/src . >> $LOG_FILE 2>&1

# Clean up
echo "Cleaning up..."
rm -rf tmp_theme >> $LOG_FILE 2>&1

echo "Theme updated successfully!"

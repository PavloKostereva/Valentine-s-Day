#!/bin/bash
# Remove git repositories from Desktop and project folder

echo "Removing .git from Desktop..."
cd ~/Desktop
if [ -d .git ]; then
    rm -rf .git
    echo "✓ Removed .git from Desktop"
else
    echo "✗ No .git found in Desktop"
fi

echo ""
echo "Removing .git from Valentine's Day project..."
cd ~/Desktop/"Valentine's Day"
if [ -d .git ]; then
    rm -rf .git
    echo "✓ Removed .git from project folder"
else
    echo "✗ No .git found in project folder"
fi

echo ""
echo "Checking for .git in parent directories..."
cd ~
if [ -d .git ]; then
    echo "⚠ WARNING: .git found in home directory!"
else
    echo "✓ No .git in home directory"
fi

echo ""
echo "Done! Git repositories removed."



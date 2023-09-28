#!/bin/bash

# Prompt for the file(s) you want to add
read -p "Enter the file(s) to add (space-separated): " files
git add $files

# Prompt for the commit message
read -p "Enter a commit message: " message
git commit -m "$message"

# Prompt for the branch name
read -p "Enter the branch name: " branch

# Push to the specified branch
git push origin dev
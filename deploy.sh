#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
s2gen -once

# Add changes to git.
git add -A

# Commit changes.
msg="rebuilding site `date`"
git commit -m "$msg"

# Push source and build repos.
git push origin master
git subtree push --prefix=site git@github.com:alexanderzafirov/zafirov.me.git gh-pages

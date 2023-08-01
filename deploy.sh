#!/bin/sh

if [ "`git status -s`" ]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

rsync -av --delete "/Users/aza/Library/Mobile Documents/iCloud~md~obsidian/Documents/digital_brain/Blog/" '/Users/aza/workspace/mine/zafirov.me/content'

echo "Deleting old publication"
rm -rf public
mkdir public
git worktree prune
rm -rf .git/worktrees/public/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages public origin/gh-pages

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

echo "Updating gh-pages branch"
cd public && git add --all && git commit -m "Publishing to gh-pages (deploy.sh)"

echo "Pushing to github"
git push --all

cd .. && git add --all && git commit -m "Publishing generated content (deploy.sh)"
git push --all

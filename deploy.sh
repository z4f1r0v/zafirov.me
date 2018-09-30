#!/bin/sh

if [[ $(git status -s) ]]
then
    echo "The working directory is dirty. Please commit any pending changes."
    exit 1;
fi

echo "Deleting old publication"
rm -rf site
mkdir site
git worktree prune
rm -rf .git/worktrees/site/

echo "Checking out gh-pages branch into public"
git worktree add -B gh-pages site origin/gh-pages

echo "Removing existing files"
rm -rf site/*

echo "Generating site"
s2gen -once

echo "Updating gh-pages branch"
cd site && git add --all && git commit -m "Publishing to gh-pages `date`"
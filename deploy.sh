#!/bin/sh

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
cd site
echo "zafirov.me" >> CNAME
cp -r ../css css
git add --all && git commit -m "Publishing to gh-pages `date`" && git push && cd ..


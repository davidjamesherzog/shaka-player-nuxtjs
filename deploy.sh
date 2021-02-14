#!/usr/bin/env sh

# abort on errors
# set -e

# build
npm run generate

# copy build output directory to /docs
rm -R docs
mkdir docs
cp -R dist/ docs/

# git init
git add -A
git commit -m 'deploy static generated site'

# push to github
git push -u origin main

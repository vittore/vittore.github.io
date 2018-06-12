#!/bin/bash
pushd /Users/vittore/Projects/www.zen.pn.it/jekyll_source
rm -rf _site/*
jekyll build
pushd /Users/vittore/Projects/www.zen.pn.it/vittore.github.io
rsync -avz --delete /Users/vittore/Projects/www.zen.pn.it/jekyll_source/_site/* /Users/vittore/Projects/www.zen.pn.it/vittore.github.io --exclude .git
git add .
git commit -am '`date`'
git push origin master
popd
popd

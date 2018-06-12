#!/bin/bash
pushd /Users/vittore/Projects/www.zen.pn.it/jekyll_source
jekyll build
pushd /Users/vittore/Projects/www.zen.pn.it/vittore.github.io
cp -r /Users/vittore/Projects/www.zen.pn.it/jekyll_source/_site/* /Users/vittore/Projects/www.zen.pn.it/vittore.github.io
git add .
git commit -am '`date`'
git push origin master
popd
popd

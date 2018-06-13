#!/bin/bash
jekyll build --source /Users/vittore/Projects/www.zen.pn.it/jekyll_source --destination /Users/vittore/Projects/www.zen.pn.it/vittore.github.io
pushd /Users/vittore/Projects/www.zen.pn.it/vittore.github.io
git add .
git commit -am "`date`"
git push origin master 
popd

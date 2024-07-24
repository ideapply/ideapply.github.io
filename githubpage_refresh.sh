#!/bin/sh


cd /Users/lukesky/Public/GithubPages/personal-site
git pull
hugo -d docs
git add --all
git commit -m "Auto Push"
git push -u origin main

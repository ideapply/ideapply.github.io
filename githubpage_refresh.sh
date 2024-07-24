#!/bin/sh


cd /Users/lukesky/Public/GithubPages/personal-site
git pull
hugo
git add .
git commit -m "Auto Push"
git push -u origin main

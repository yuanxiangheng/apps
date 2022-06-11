#!/usr/bin/env bash

git add .
git commit -m "msg"
git push origin master


git lfs track "renxi.mp3"
git add .gitattributes
git add .
git commit -m "add rds"
git push origin master

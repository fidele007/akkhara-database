#!/bin/bash

git pull
if [ -f ~/Dropbox/Projects/Dictionaries/Databases/en-kh.angkor.sqlite ]; then
	cp ~/Dropbox/Projects/Dictionaries/Databases/en-kh.angkor.sqlite .
elif [ -f /mnt/d/Dropbox/Projects/Dictionaries/Databases/en-kh.angkor.sqlite ]; then
	cp /mnt/d/Dropbox/Projects/Dictionaries/Databases/en-kh.angkor.sqlite .
fi

git add en-kh.angkor.sqlite
git commit -m "feat: update en-kh.angkor.sqlite"
git push -u origin main
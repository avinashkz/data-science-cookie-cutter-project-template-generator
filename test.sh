#! /bin/bash

echo "Enter the link for the initialised GitHub repo"
read link
if [ -n "$link" ]; then
    git init
    git add .
    git commit -m "Initializing"
    git remote add origin $link
fi
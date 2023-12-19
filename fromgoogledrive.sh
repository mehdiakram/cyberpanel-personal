#!/bin/bash
directory="/home/backup"
 
if [ ! -d "$directory" ]; then
    mkdir -p "$directory"
    echo "Directory '$directory' created."
else
    echo "Directory '$directory' already exists."
fi

echo "Accessing '$directory' directory."
cd /home/backup

wget https://raw.githubusercontent.com/mehdiakram/cyberpanel-personal/main/lists.txt

file="lists.txt"
while read -r line; do
	gdown https://drive.google.com/uc?id=$line
done <$file

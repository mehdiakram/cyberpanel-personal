#!/bin/bash
cd /home && mkdir backup && cd backup
cd /home/backup

wget https://raw.githubusercontent.com/mehdiakram/cyberpanel-personal/main/lists.txt

file="lists.txt"
while read -r line; do
	gdown https://drive.google.com/uc?id=$line
done <$file

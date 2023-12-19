#!/bin/bash
cd /home && mkdir backup && cd backup
cd /home/backup

echo "Enter lists.txt URL"
read fileid
wget fileid

file="lists.txt"
while read -r line; do
	gdown https://drive.google.com/uc?id=$line
done <$file

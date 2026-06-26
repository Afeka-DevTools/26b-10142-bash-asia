#!/bin/bash
read -p "Enter folder path: " folder
read -p "Enter number of days: " days

if [ ! -d "$folder" ]; then
	echo "Folder does not exist"
	exit 1
fi

echo "Files older than $days days in $folder:"
find "$folder" -type f -mtime +"$days"

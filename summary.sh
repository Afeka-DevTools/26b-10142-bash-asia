#!/bin/bash

read -p "Enter folder path: " folder

if [ ! -d "$folder" ]; then
	echo "Folder does not exist!"
	exit 1
fi

files=$(find "$folder" -type f | wc -l)
dirs=$(find "$folder" -type d | wc -l)
links=$(find "$folder" -type l | wc -l)

echo "Summary for: $folder"
echo "Files: $files"
echo "Directories: $dirs"
echo "Links: $links"


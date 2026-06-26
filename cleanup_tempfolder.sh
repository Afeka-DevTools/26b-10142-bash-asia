#!/bin/bash

read -p "Enter folder path: " folder

if [ ! -d "$folder" ]; then
	echo "Folder does not exist!"
	exit 1
fi

echo "Temporary files found:"
find "$folder" \( -name "*.class" -o -name "*.pyc" -o -name "node_modules" \)

read -p "Do you want to delete them? (y/n): " answer

if [ "$answer" = "y" ]; then
	find "$folder" \( -name "*.class" -o -name "*.pyc" -o -name "node_modules" \) -exec rm -rf {} +
	echo "Temporary files deleted."
else
	echo "Delete cancelled."
fi


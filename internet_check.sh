#!/bin/bash

read -p "Enter website: " website
echo "Checking connection to $website..."

if ping -n 4 "$website" > /dev/null
then
	echo "Connection successful"
else
	echo "Connection failed"
fi
 

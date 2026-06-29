#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0  <directory>"
    exit 1
fi
DIR="$1"
if [ ! -d "$DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi
BACKUP_NAME="$(basename "$DIR")_$(data +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$BACKUP_NAME" "$DIR"
if [ $? -eq 0 ]; then
    echo "Backup created: $BACKUP_NAME"
else
    echo "Backup failed."
fi

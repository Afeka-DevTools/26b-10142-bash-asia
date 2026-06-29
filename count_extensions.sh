#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi

find "$DIR" -type f | \
awk -F. '
NF>1 {count[$NF]++}
END {
    for (ext in count)
        print ext ": " count[ext]
}'

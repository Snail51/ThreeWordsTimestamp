#!/bin/bash
# Script that finds all files that start with `scan*` at the provided directory, and renames each to use the threeWordTime name

# Take in command line arguments
targetdir=$1

find $targetdir -maxdepth 1 -type f -name 'scan*' -exec sh -c '
    path=$(dirname "$0")
    file=$(basename "$0")
    extension="${file##*.}"
    index=$(echo "$file" | sed "s/[^0-9]//g")

    new_name=$(./threeWordTime.sh)


    old="${path}/${file}"

    new="${path}/${index}_${new_name}.${extension}"

    meta="${path}/${index}_${new_name}.meta.txt"

    mv "$old" "$new" && touch "$meta"
' {} \;
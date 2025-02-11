#!/bin/bash

# Take in command line arguments
targetdir=$1

while true; do
    ./renameScans.sh $1;
    echo "rename operation complete.";
    sleep 1;
done
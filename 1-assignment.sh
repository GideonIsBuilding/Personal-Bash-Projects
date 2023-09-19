#!/bin/bash

# Check if an argument "a" or "d" is provided
sort_order="" # This initializes the variable sort_order

if [ "$1" == "a" ] || [ "$1" == "d" ]; then
    sort_order="$1"
    shift # This removes the first (sort) argument from the list of argumentss and allows the script to process the remaining arguments
fi

# Iterate through the remaining directory arguments
for dir in "$@"; do
    if [ -d "$dir" ]; then
        echo "Listing contents of $dir:"
        
        if [ "$sort_order" == "a" ]; then
            find . "$dir" | sort # List the items in ascending order
        elif [ "$sort_order" == "d" ]; then
            find . "$dir" | sort -r # Lists the items in descending order
        else
            ls -1 "$dir" # List the files if there's no additional argument
        fi

        echo "" # This line adds an empty line to separate the listings of different directories
    else
        echo "$dir is not a valid directory."
    fi
done

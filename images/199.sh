#!/bin/bash
# Initialize a counter
count=1
# For each file in the directory (sorted alphabetically)
for file in $(ls -v); do
    # Determine file extension
    ext="${file##*.}"

    # Rename the file to count.extension
    mv "$file" "$count.$ext"

    # Increment the counter
    ((count++))
done
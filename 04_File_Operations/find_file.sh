#!/bin/bash
# Task 3: Find a file with a default path option

read -p "Enter search path: " path
read -p "Enter filename: " name

# If path is empty or not a directory, use /
if [ ! -d "$path" ]; then
    path="/"
fi

echo "Searching in $path..."
find "$path" -name "$name" 2>/dev/null

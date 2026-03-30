#!/bin/bash
# Task 2: Print Lines, Words, and Characters

read -p "Enter filename: " file

echo "Lines: $(wc -l < $file)"
echo "Words: $(wc -w < $file)"
echo "Characters: $(wc -m < $file)"


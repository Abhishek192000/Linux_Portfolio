#!/bin/bash
# Script to print core server details

echo "--- SERVER DETAILS ---"

# Name: The network hostname
echo "Name: $(hostname)"

# Memory: Human-readable RAM usage
# The -h flag makes it easy to read (e.g., 2G instead of bytes)
echo "Memory:"
free -h | grep "Mem"

# CPU: Extracts the specific hardware model name
echo "CPU: $(lscpu | grep "Model name" | sed 's/Model name: *//')"

# Disk: Shows total space and usage for the root partition
echo "Disk:"
df -h / --total | grep "total"

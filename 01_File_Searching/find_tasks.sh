#!/bin/bash
# ---------------------------------------------------------
# DevOps Lab 1: Advanced File Searching (find)
# Purpose: Locating system files for maintenance and cleanup
# ---------------------------------------------------------

echo "--- Finding .java files ---"
find . -type f -name "*.java"

echo "--- Finding files > 10MB ---"
find . -size +10M

echo "--- Finding files > 10 days old ---"
find . -mtime +10

echo "--- Finding logs in /var ---"
find /var -name "*.log"

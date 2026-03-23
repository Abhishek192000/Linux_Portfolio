#!/bin/bash
echo "--- SERVER DETAILS ---"
hostname
free -h | grep "Mem"
lscpu | grep "Model name"
df -h /


#!/bin/bash
echo "--- SERVER DETAILS ---"
echo "Name: $(hostname)"
echo "Memory: $(free -h | grep "Mem" | awk '{print $3 "/" $2 " used"}')"
echo "CPU: $(lscpu | grep "Model name" | sed 's/Model name: *//')"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 "/" $2 " (" $5 ")"}')"


#!/bin/bash
#echo "Report Generated on: $(date)"
# Script to print top 10 running processes based on CPU utilization

echo "--- TOP 10 PROCESSES BY CPU UTILIZATION ---"

# -e: select all processes
# -o: specify custom output columns (PID, Command, %CPU)
# --sort=-%cpu: sort by CPU in descending order
# head -n 11: shows header + top 10 processes
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11 | column -t

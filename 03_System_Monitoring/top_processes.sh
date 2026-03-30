#!/bin/bash
echo "--- TOP 10 PROCESSES BY CPU ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11 | column -t



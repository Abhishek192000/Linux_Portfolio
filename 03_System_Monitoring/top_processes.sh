#!/bin/bash
echo "--- TOP 10 CPU USAGE ---"
ps aux --sort=-%cpu | head -n 11


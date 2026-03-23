# 📂 Lab 03: System Monitoring

This lab implements automated shell scripts for system health and process monitoring.

## 📋 Task 1: Server Details (`server_info.sh`)
Provides high-level system identification and resource snapshots.
*   **Name:** Captured via `hostname`.
*   **Memory:** RAM usage statistics using `free -h`.
*   **CPU:** Specific processor model extracted from `lscpu`.
*   **Disk:** Root partition storage capacity and percentage used via `df -h`.

## 📋 Task 1.1: Top Processes (`top_processes.sh`)
Identifies and ranks the top 10 running processes based on CPU consumption.
*   **Command:** `ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11`
*   **Logic:** Uses a descending sort (`-`) to ensure the most resource-intensive tasks are listed first.


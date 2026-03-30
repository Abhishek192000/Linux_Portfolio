# 📂 Lab 1: Advanced File Searching (find)

In this lab, I practiced locating system files based on specific criteria like extension, size, and age—a critical skill for server maintenance in AWS.

### 📝 Solutions & Scripts
- **Executable Script:** [find_tasks.sh](./find_tasks.sh)

**Commands covered:**
- Find .java files: `find . -type f -name "*.java"`
- Find files > 10MB: `find . -size +10M`
- Find files > 10 days old: `find . -mtime +10`
- Search System Logs: `find /var -name "*.log"`



### 🛠️ Lab 1 Challenges & Solutions
- **Challenge:** Encountered `Permission denied` when searching `/var`.
- **Learning:** Some system directories require `sudo` privileges. I learned that `find` will still show results for accessible files even if some folders are locked.
- **Challenge:** Understanding `-mtime +10` vs `-10`.
- **Learning:** I learned that `+` means "older than" and `-` means "newer than."

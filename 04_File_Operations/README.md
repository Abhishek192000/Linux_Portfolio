# 📂 Lab 04: File Operations & User Input

This lab focuses on building interactive shell scripts that handle user input, file analysis, and directory searching.

---

## 📋 Task 2: File Statistics (`file_stats.sh`)
This script accepts a filename from the user and calculates its core content details.

### 🔍 Code Explanation:
*   **`read -p`**: Prompts the user for a filename and stores it in a variable named `file`.
*   **`wc -l < $file`**: Calculates the number of **lines**. Using `<` ensures the command only returns the number, not the filename.
*   **`wc -w < $file`**: Calculates the number of **words**.
*   **`wc -m < $file`**: Calculates the number of **characters**.

---

## 📋 Task 3: File Finder with Default Path (`find_file.sh`)
This script searches for a specific file within a user-defined directory, with a built-in safety fallback.

### 🔍 Code Explanation:
*   **`if [ ! -d "$path" ]`**: This checks if the directory provided by the user is **NOT** valid or is empty.
*   **`path="/" `**: If the check above fails, the script automatically sets the search path to the root directory.
*   **`find "$path" -name "$name"`**: Searches for the filename within the chosen path.
*   **`2>/dev/null`**: This is crucial—it sends "Permission Denied" errors to a "black hole" so the user only sees the files they are allowed to see.

---

## 🛠 Challenges Faced & Learning
1.  **Input Validation:** I learned how to use directory checks (`-d`) to make the script "smart" enough to handle typos.
2.  **Default Value Logic:** I implemented a fallback system, which is a key concept in writing robust automation scripts.
3.  **Error Redirection:** I learned to manage "Standard Error" (stderr) using `2>/dev/null` to keep terminal outputs clean and professional.

---

## 🚀 How to Run
1. **Navigate to the folder:**
   `cd 04_File_Operations`
2. **Make scripts executable:**
   `chmod +x *.sh`
3. **Execute:**
   `./file_stats.sh` OR `./find_file.sh`

# 🔍 Lab 2: Log Analysis & String Searching (grep)

Troubleshooting in AWS begins with logs. This lab demonstrates advanced text filtering techniques used to monitor system health and security events.

### 📝 Solutions & Scripts
- **Executable Script:** [grep_tasks.sh](./grep_tasks.sh)

**Commands covered:**
- Identify 6-Digit IDs: `grep -E '\b[0-9]{6}\b' production.log`
- Filter Tags (Starts 'V', Ends 'U'): `grep -E '\bV.*U\b' production.log`
- Error Trace Identification: `grep -E '_B_D_|A_C_E' production.log`
- OR Logic: `grep -E 'abc|def' production.log`
- AND Logic: `grep 'abc' production.log | grep 'def'`



### 🛠️ Lab 2 Challenges & Solutions
- **Challenge:** The `grep` command didn't recognize the `{6}` syntax initially.
- **Learning:** I learned I must use the `-E` (Extended Regex) flag for advanced patterns like curly braces to work.
- **Challenge:** Creating an "AND" search.
- **Learning:** `grep` doesn't have a built-in "AND" operator. I learned to use the **Pipe (`|`)** to string two `grep` commands together to find lines containing both strings.

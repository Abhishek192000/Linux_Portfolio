#!/bin/bash
# ---------------------------------------------------------
# DevOps Lab 2: Log Analysis & String Searching (grep)
# Purpose: Extracting specific data patterns from server logs
# ---------------------------------------------------------

echo "--- Identifying 6-digit transaction IDs ---"
grep -E '\b[0-9]{6}\b' production.log

echo "--- Filtering Tag Patterns (Starts 'V', Ends 'U') ---"
grep -E '\bV.*U\b' production.log

echo "--- Identifying Error Traces (_B_D_ & A_C_E) ---"
grep -E '_B_D_|A_C_E' production.log

echo "--- Boolean Logic (OR/AND) ---"
grep -E 'abc|def' production.log
grep 'abc' production.log | grep 'def'

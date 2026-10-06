#!/bin/bash
echo "===== Health Check: $(date) ====="

echo -e "\n--- Disk Usage ---"
df -h --output=source,pcent,target | grep -v "loop"

echo -e "\n--- Memory Usage ---"
free -h

echo -e "\n--- Top 5 CPU-consuming processes ---"
ps aux --sort=-%cpu | head -6

echo -e "\n===== End of Health Check ====="

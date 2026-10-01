#!/bin/bash
LOG_FILE="/var/log/myapp.log"
BACKUP_DIR="$HOME/mlops/labs/logs"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"

if [ -f "$LOG_FILE" ]; then
    cp "$LOG_FILE" "$BACKUP_DIR/myapp_$DATE.log"
    > "$LOG_FILE"
    echo "Log rotated on $DATE"
else
    echo "Log file not found: $LOG_FILE"
fi

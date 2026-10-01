#!/bin/bash
THRESHOLD=80
CURRENT_USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$CURRENT_USAGE" -ge "$THRESHOLD" ]; then
    echo "ALERT: Disk usage is at ${CURRENT_USAGE}%, threshold is ${THRESHOLD}%"
else
    echo "OK: Disk usage is at ${CURRENT_USAGE}%"
fi

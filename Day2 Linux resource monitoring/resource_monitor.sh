#!/bin/bash
# Resource thresholds
CPU_THRESHOLD=1
MEM_THRESHOLD=1
DISK_THRESHOLD=1
# Email settings
TO="your_email@example.com"  # Replace with your real email
SUBJECT="⚠️ Resource Usage Alert"
HOSTNAME=$(hostname)
# Collect usage info (fake values here to force alert)
CPU_USAGE=99
MEM_USAGE=99
DISK_USAGE=99
# Prepare message
MESSAGE="Alert on $HOSTNAME:
CPU Usage: $CPU_USAGE%
Memory Usage: $MEM_USAGE%
Disk Usage: $DISK_USAGE%
"
# Send the mail
echo "$MESSAGE" | mail -s "$SUBJECT" "$TO"
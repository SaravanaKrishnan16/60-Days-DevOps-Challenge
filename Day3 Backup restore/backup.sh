#!/bin/bash

SOURCE_DIR="/home/saravana/test-project"
BACKUP_DIR="/home/saravana/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

# Create backup folder if not exists
mkdir -p "$BACKUP_DIR"

# Create compressed backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

# Log entry
echo "[✔] Backup created at $TIMESTAMP → $BACKUP_FILE" >> "$BACKUP_DIR/backup.log"

echo "✅ Backup successful: $BACKUP_FILE"

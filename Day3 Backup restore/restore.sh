#!/bin/bash

BACKUP_DIR="/home/saravana/backups"
RESTORE_DIR="/home/saravana/test-project"
LATEST_BACKUP=$(ls -t "$BACKUP_DIR"/backup_*.tar.gz | head -n 1)

echo "🕑 Restoring from: $LATEST_BACKUP"

# Extract to original folder
mkdir -p "$RESTORE_DIR"
tar -xzf "$LATEST_BACKUP" -C /

echo "✅ Restore completed to $RESTORE_DIR"

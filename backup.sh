#!/bin/bash

# Settings
SOURCE_DIR=$1                      # Backup directory (command line argument)
BACKUP_DIR="./backups"             # Directory for storing backups
LOG_DIR="./logs"                   # Directory for logs
TIMESTAMP=$(date +"%Y%m%d_%H%M%S") # Timestamp for archive name

# Check if an argument exists
if [ -z "$SOURCE_DIR" ]; then
  echo "Error: Please specify a directory for backup."
  echo "Example usage: ./backup.sh /path/to/source"
  exit 1
fi

# Checking if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Directory $SOURCE_DIR does not exist."
  exit 1
fi

# Create directories for backups and logs if they do not exist
mkdir -p "$BACKUP_DIR"
mkdir -p "$LOG_DIR"

# Archive name
BACKUP_NAME="backup_$(basename "$SOURCE_DIR")_$TIMESTAMP.tar.gz"


# Creating a Backup
echo "Создание резервной копии $SOURCE_DIR..."
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"

# Checking whether the archive was created successfully
if [ $? -eq 0 ]; then
  echo "The backup was created successfully.: $BACKUP_DIR/$BACKUP_NAME"
  # Logging
  echo "$(date +"%Y-%m-%d %H:%M:%S") - Backup copy $BACKUP_NAME created successfully." >> "$LOG_DIR/backup.log"
else
  echo "Ошибка при создании резервной копии."
  echo "$(date +"%Y-%m-%d %H:%M:%S") - Ошибка при создании резервной копии $BACKUP_NAME." >> "$LOG_DIR/backup.log"
  exit 1
fi

# Output archive size
BACKUP_SIZE=$(du -h "$BACKUP_DIR/$BACKUP_NAME" | cut -f1)
echo "Backup size: $BACKUP_SIZE"
echo "$(date +"%Y-%m-%d %H:%M:%S") - Backup size: $BACKUP_SIZE" >> "$LOG_DIR/backup.log"
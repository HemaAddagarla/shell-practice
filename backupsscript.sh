!#bin/bash

#This script is used to automate the  backup directory and compress it

SOURCE_DIR=/var/lib/html
DEST_DIR=/backups
BACKUP_NAME= "html-backups-$DATE.gz

mkdir -p "$DEST_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR" 

echo "backup created $BACKUP_DIR/$BACKUP_NAME at "$(date)"



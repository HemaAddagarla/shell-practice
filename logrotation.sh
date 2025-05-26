!#bin/bash

#This script compresses the log files of a application  and stores them in archive folder and deletes the folder after 7 days

LOG_DIR = /var/log/myapp
ARCHIVE_DIR = "$LOG_DIR/archive"
MAX_DAYS = 7

mkdir -p "$ARCHIVE_DIR"

#finding the log files of the application and zipping them

find "$LOG_DIR" -type f -name ".*log" -mtime +0 -exec gzip {} \;

#moving zipped files to archive directory

find "$LOG_DIR" -type f -name ".gz" -exec mv {}  "$ARCHIVE_DIR"  \;

#Deleting the archive dir after 7 days

find "$ARCHIVE_DIR" -type f -name "*.gz" -mtime "$MAX_DYAS" -exec rm {} \;
 
echo "Log rotation completed on $(date)"

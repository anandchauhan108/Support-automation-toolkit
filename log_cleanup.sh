#!/bin/bash
LOG_DIR="/var/log/myapp"
ARCHIVE_DIR="/var/log/myapp/archive"
mkdir -p $ARCHIVE_DIR
find $LOG_DIR -name "*.log" -type f -mtime +7 -exec gzip {} \; -exec mv {}.gz $ARCHIVE_DIR \;
echo "Old logs archived and compressed."

#!/bin/bash

# Directories to clear
UPLOADS_DIR="/home/ubuntu/uploads"
REPORTS_DIR="/var/www/html/reports"

# Function to delete files in a directory
delete_files() {
    local DIR=$1
    if [ -d "$DIR" ]; then
        find "$DIR" -type f -exec rm {} \;
        echo "$(date): All files deleted from $DIR" >> /var/log/delete_files.log
    else
        echo "$(date): Directory $DIR does not exist" >> /var/log/delete_files.log
    fi
}

# Delete files in the specified directories
delete_files "$UPLOADS_DIR"
delete_files "$REPORTS_DIR"

#!/bin/bash

# Đường dẫn đến script chính
MAIN_SCRIPT="/home/ubuntu/server_bash/scan.sh"

# Kiểm tra xem script có đang chạy không
if ! pgrep -f "$MAIN_SCRIPT" > /dev/null; then
    echo "Scan script is not running. Starting script..."
    /bin/bash "$MAIN_SCRIPT" &
fi

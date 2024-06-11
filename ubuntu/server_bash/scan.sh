#!/bin/bash

# Đường dẫn tới thư mục uploads và reports
upload_dir='/home/ubuntu/uploads'
report_dir='/var/www/html/reports'
#server_path='/home/ubuntu/server/server.js'

# Kiểm tra xem các thư mục có tồn tại không
if [ ! -d "$upload_dir" ]; then
    echo "Upload directory does not exist: $upload_dir"
    exit 1
fi

if [ ! -d "$report_dir" ]; then
    echo "Report directory does not exist: $report_dir"
    mkdir -p "$report_dir"
fi

#while true
#do
#    echo "Starting Node.js server..."
#    node "$server_path"
#    echo "Server crashed with exit code $?. Respawning..."
#    sleep 1
#done &
# Chức năng quét file
scan_file() {
    local file_path="$1"
    local file_name=$(basename "$file_path")
    local report_file="$report_dir/${file_name}.txt"

    # Chạy ClamAV để quét file
    clamscan_output=$(clamscan -d "/home/ubuntu/server_bash/rules/main.yar" "$file_path" | sed "s|.*/||")

    # Lưu kết quả vào file báo cáo
    echo "$clamscan_output" > "$report_file"

    # In thông báo
    echo "Scan complete. Report saved to: $report_file"
}

# In thông báo khi bắt đầu theo dõi thư mục
echo "Watching directory: $upload_dir"
echo "Scanning for new files..."

# Theo dõi thư mục và xử lý các file mới
inotifywait -m -e create --format '%w%f' "$upload_dir" | while read new_file
do
    # Kiểm tra xem đối tượng được tạo có phải là file không
    if [ -f "$new_file" ]; then
        echo "New file created: $new_file"
        scan_file "$new_file"
    fi
done

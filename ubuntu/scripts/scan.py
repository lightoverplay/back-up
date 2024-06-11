import os
import time
import shutil
import pyinotify

# Đường dẫn thư mục uploads và reports
upload_dir = '/home/ubuntu/uploads'
report_dir = '/var/www/html/reports'

# Khởi tạo đối tượng wm để theo dõi sự kiện thay đổi tệp tin
wm = pyinotify.WatchManager()

# Lớp xử lý sự kiện khi có tệp tin được tạo mới trong thư mục uploads
class NewFileEventHandler(pyinotify.ProcessEvent):
    def process_IN_CREATE(self, event):
        # Đường dẫn đầy đủ của tệp tin mới
        new_file = os.path.join(event.path, event.name)
        
        # Quét tệp tin mới bằng ClamAV
        clamscan_command = f'clamscan -ir --bytecode=yes {new_file} -d \'/home/ubuntu/scripts/rules/main.yar\' '
        clamscan_output = os.popen(clamscan_command).read()
        
        # Tạo tên tệp tin báo cáo cùng tên với tệp tin mới
        report_file = os.path.join(report_dir, f'{event.name}.txt')
        
        # Lưu kết quả quét vào tệp tin báo cáo
        with open(report_file, 'w') as f:
            f.write(clamscan_output)
        
        # In thông báo khi quét hoàn tất
        print(f'Scan complete. Report saved to: {report_file}')

# Đăng ký sự kiện tạo mới tệp tin và gắn sự kiện với lớp xử lý
event_handler = NewFileEventHandler()
notifier = pyinotify.Notifier(wm, event_handler)

# Thêm sự kiện quan sát thư mục uploads
wm.add_watch(upload_dir, pyinotify.IN_CREATE)

# In thông báo khi bắt đầu quét
print(f'Watching directory: {upload_dir}')
print('Scanning for new files...')

# Vòng lặp chạy mãi mãi để theo dõi sự kiện
while True:
    try:
        notifier.process_events()
        if notifier.check_events():
            notifier.read_events()
    except KeyboardInterrupt:
        notifier.stop()
        break

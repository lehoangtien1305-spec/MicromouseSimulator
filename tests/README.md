# Kiểm thử

Chạy sau khi đã biên dịch dự án:

```bash
ctest --test-dir build --output-on-failure
```

- `TC03_ApplicationStarts`: chương trình khởi chạy.
- `TC04_InitializeMessage`: thông báo khởi tạo.
- `TC05_RunMessage`: thông báo chạy.
- `TC06_ShutdownMessage`: thông báo kết thúc.
- `Lifecycle_ExactOutput`: kiểm tra đủ ba thông báo theo đúng thứ tự.

Các trường hợp TC01, TC02 cần được xác nhận bằng CMake configure/build; TC07 bằng `git ls-files` và TC08 bằng clone từ GitHub/GitLab sang máy/thư mục mới rồi build lại. Bảng đầy đủ nằm trong `docs/test-report.md`.

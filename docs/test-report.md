# TEST REPORT – MICROMOUSE SIMULATOR V0.1.0

**Phạm vi kiểm thử:** bộ mã nguồn được tạo cho bài thực hành số 01. **Môi trường đã thực sự chạy thử:** Linux, GCC 14.2.0, CMake 3.31.6, Git 2.47.3. Đây **không phải** thông tin phiên bản các công cụ trên máy người nộp bài.

| Mã | Nội dung kiểm thử | Kết quả thực tế trong môi trường thử nghiệm | Trạng thái |
|---|---|---|---|
| TC01 | Cấu hình dự án bằng CMake | `cmake -S . -B build` thành công | Đạt (Linux) |
| TC02 | Biên dịch dự án | `cmake --build build` tạo executable thành công, không thấy cảnh báo từ GCC | Đạt (Linux) |
| TC03 | Khởi chạy chương trình | Chạy ứng dụng, thoát với mã 0 | Đạt (Linux) |
| TC04 | `Application.initialize()` | In `Initializing Micromouse Simulator...` | Đạt (Linux) |
| TC05 | `Application.run()` | In `Micromouse Simulator is running.` | Đạt (Linux) |
| TC06 | `Application.shutdown()` | In `Shutting down application.` | Đạt (Linux) |
| TC07 | Kiểm tra Repository | Xem `git ls-files` sau khi khởi tạo Git: không có tệp build được theo dõi | Đạt (Git cục bộ) |
| TC08 | Clone từ GitHub/GitLab và biên dịch lại | Chưa có Repository từ xa của nhóm; sẽ cần thực hiện clone remote và build trên máy/thư mục mới | **Chưa xác minh theo yêu cầu** |

## Kiểm thử tự động bổ sung

Lệnh `ctest --test-dir build --output-on-failure` đã chạy **5/5 phép thử đạt** trên Linux, gồm TC03, TC04, TC05, TC06 và `Lifecycle_ExactOutput` (kiểm tra thứ tự và nội dung chính xác ba dòng). Không đồng nghĩa đã hoàn thành TC08 trên GitHub/GitLab.

## Kết quả chương trình

```text
Initializing Micromouse Simulator...
Micromouse Simulator is running.
Shutting down application.
```

## Kết quả chương trình thử compiler (`test.cpp`)

Biên dịch và chạy thành công bằng `g++ -std=c++17 -Wall -Wextra test.cpp -o build/test-env`:

```text
Micromouse Simulator
C++ Development Environment Ready!
```

## Kiểm thử cần bổ sung trên máy nhóm

- Chụp kết quả cấu hình, biên dịch, chạy chương trình trên Windows/VS Code.
- Kiểm thử TC08 bằng clone GitHub/GitLab thật sang máy khác hoặc thư mục mới.
- Bổ sung URL PR và nhận xét Code Review, xác nhận không có tệp build trên Repository remote.

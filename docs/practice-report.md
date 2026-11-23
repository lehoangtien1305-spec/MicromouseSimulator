# BÁO CÁO KẾT QUẢ THỰC HÀNH SỐ 01

**Học phần:** Kỹ thuật lập trình C++  
**Bài:** Khởi tạo dự án phần mềm Micromouse Simulator và quy trình phát triển phần mềm chuyên nghiệp  
**Phiên bản:** V0.1.0

## 5.1. Thông tin nhóm

| Nội dung | Thông tin |
|---|---|
| Tên nhóm | [Nhóm tự điền] |
| Thành viên | [Họ tên thật của các thành viên] |
| Lớp | [Lớp thực tế] |
| GitHub Repository | [URL thực tế sau khi tạo] |
| Project Lead | [Họ tên người phụ trách] |

## 5.2. Kết quả thực hiện

### 1. Kết quả phân tích yêu cầu

- **Số lượng yêu cầu chức năng:** 10 (FR01–FR10).
- **Số lượng yêu cầu phi chức năng:** 7 (NFR01–NFR07).
- **Chức năng chính xác định:** tạo/lưu/nạp mê cung; quản lý trạng thái robot; cảm biến tường; tìm đường bằng BFS, DFS, Flood Fill; mô phỏng di chuyển; hiển thị; thống kê. Các chức năng này là **định hướng sau 9 buổi**, chưa triển khai trong V0.1.0.
- **Product Backlog:** 6 User Stories (US01–US06) tại `docs/product-backlog.md`.

### 2. Kết quả thiết lập môi trường

| Công cụ | Phiên bản trong môi trường kiểm thử Linux | Kết quả | Trên máy sinh viên |
|---|---|---|---|
| VS Code | Không được kiểm tra trong môi trường này | Không đủ dữ liệu để xác minh | Cần bổ sung |
| GCC | 14.2.0 | Hoạt động | Cần bổ sung |
| CMake | 3.31.6 | Hoạt động | Cần bổ sung |
| Git | 2.47.3 | Hoạt động | Cần bổ sung |

Chương trình `test.cpp` đã biên dịch, chạy và in đúng 2 dòng theo giáo trình trong môi trường kiểm thử Linux. Người nộp cần chụp ảnh môi trường thật tại máy của mình.

### 3. Kết quả xây dựng dự án

- **Tên:** MicromouseSimulator.
- **Phiên bản mục tiêu:** V0.1.0.
- **Cấu trúc:** `include/app/Application.h`, `src/app/Application.cpp`, `src/main.cpp`, `docs/`, `tests/`, `CMakeLists.txt`, `.gitignore`, `README.md`.
- **Quy trình chương trình:** `initialize()` → `run()` → `shutdown()`.
- **Build:** CMake configure và compile thành công trên Linux, 5/5 test CTest đạt.

### 4. Kết quả quản lý mã nguồn

| Nội dung | Kết quả |
|---|---|
| Repository | Git Repository cục bộ; **chưa có URL GitHub/GitLab của nhóm** |
| Số nhánh | 3 (`main`, `develop`, `feature/project-setup`) trong bộ Git đóng gói |
| Số Commit | 2 commit cục bộ (1 khởi tạo; 1 bổ sung mã nguồn và tài liệu) |
| Số Pull Request | 0: chưa tạo trên GitHub/GitLab |
| Code Review | Chưa có review thực tế của thành viên khác |
| Git Tag v0.1.0 | Chưa tạo; chỉ tạo sau khi PR được merge và bản tích hợp đã test |

### 5. Kết quả kiểm thử

| Mã kiểm thử | Kết quả thực tế | Đạt/Không đạt |
|---|---|---|
| TC01 | CMake configure thành công (Linux) | Đạt |
| TC02 | CMake build thành công (Linux) | Đạt |
| TC03 | Khởi chạy, mã thoát 0 (Linux) | Đạt |
| TC04 | Hiển thị thông báo initialize | Đạt |
| TC05 | Hiển thị thông báo run | Đạt |
| TC06 | Hiển thị thông báo shutdown | Đạt |
| TC07 | Git cục bộ không track tệp build | Đạt (cục bộ) |
| TC08 | Chưa clone từ remote của nhóm | Chưa xác minh |

### 6. Bàn giao V0.1.0

Các tệp mã nguồn, cấu hình CMake, README, phân tích yêu cầu và bài kiểm thử đã chuẩn bị. Việc phát hành trên GitHub/GitLab, Pull Request, review và Git Tag vẫn phải được nhóm thực hiện để hoàn tất đủ yêu cầu đánh giá.

## 5.3. Tự đánh giá của sinh viên

**Kiến thức/kỹ năng thể hiện qua bộ mã nguồn:** tổ chức C++ nhiều tệp, sử dụng header/source, thiết lập CMake, dùng Git cục bộ, tạo tài liệu yêu cầu và kiểm thử vòng đời chương trình.

**Khó khăn gặp phải trên máy cá nhân:** Không đủ dữ liệu để xác minh; sinh viên cần ghi theo trải nghiệm thực tế.

**Nguyên nhân và phương pháp khắc phục:** Không đủ dữ liệu để xác minh lỗi thực tế trên máy cá nhân; kiểm tra PATH, công cụ biên dịch, generator, đường dẫn mã nguồn nếu phát sinh lỗi.

**Nội dung cần cải thiện ở buổi tiếp theo:** xây dựng mô hình dữ liệu mê cung 16 × 16 bằng `struct`, `enum`, `array`/`vector`, phân chia module và bổ sung unit test; tiếp tục thực hiện các công đoạn nhóm chưa hoàn thành.

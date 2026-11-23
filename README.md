# Micromouse Simulator

**Phiên bản khởi tạo V0.1.0 – Bài thực hành số 01, Kỹ thuật lập trình C++ (HUTECH).**

## 1. Project Overview

Micromouse Simulator là dự án mô phỏng robot tìm đường trong mê cung **16 × 16**. Trong **buổi 1**, dự án chỉ khởi tạo cấu trúc, quy trình Git và một chương trình dòng lệnh có ba giai đoạn `initialize()`, `run()`, `shutdown()`. Chưa xây dựng mê cung, mô hình robot, thuật toán BFS/DFS/Flood Fill hay giao diện đồ họa.

## 2. Technologies

- C++17
- CMake 3.16 trở lên
- GCC/MinGW-w64 hoặc MSVC
- Visual Studio Code (trình soạn thảo đề xuất)
- Git; GitHub hoặc GitLab để phối hợp

## 3. Project Structure

```text
MicromouseSimulator/
├── CMakeLists.txt
├── README.md
├── .gitignore
├── test.cpp
├── include/
│   └── app/
│       └── Application.h
├── src/
│   ├── app/
│   │   └── Application.cpp
│   └── main.cpp
├── docs/
│   ├── project-requirements.md
│   ├── product-backlog.md
│   ├── team-assignments.md
│   ├── test-report.md
│   ├── workflow-git.md
│   ├── answers-12-questions.md
│   ├── practice-report.md
│   └── evidence-checklist.md
├── scripts/
│   └── check-environment.ps1
└── tests/
    ├── README.md
    └── verify_output.cmake
```

## 4. Build Instructions

Mở thư mục gốc trong VS Code (File > Open Folder); trong Terminal nhập:

```powershell
cmake -S . -B build
cmake --build build
```

Windows với generator Visual Studio (thường sinh thư mục Debug):

```powershell
.\build\Debug\MicromouseSimulator.exe
```

Windows với MinGW Makefiles hoặc Ninja (thường sinh ở thư mục build):

```powershell
.\build\MicromouseSimulator.exe
```

Nếu chạy trên Linux:

```bash
./build/MicromouseSimulator
```

Để buộc dùng MinGW, có thể dùng `cmake -S . -B build -G "MinGW Makefiles"` **nếu** MinGW Makefiles và công cụ biên dịch đã được cài. Nếu thư mục build dùng generator khác, hãy xóa thư mục `build` và cấu hình lại.

### Kiểm tra môi trường

```powershell
g++ --version
cmake --version
git --version
```

Tùy chọn (Windows PowerShell):

```powershell
.\scripts\check-environment.ps1
```

### Kiểm tra chương trình C++ đơn tệp của mục 3.2

```powershell
g++ -std=c++17 -Wall -Wextra test.cpp -o test
.\test.exe
```

## 5. Run Application

Kết quả kỳ vọng:

```text
Initializing Micromouse Simulator...
Micromouse Simulator is running.
Shutting down application.
```

## 6. Test Instructions

```powershell
ctest --test-dir build --output-on-failure
```

## 7. Development Workflow

- `main`: phiên bản ổn định.
- `develop`: tích hợp các chức năng được review.
- `feature/*`: nhánh phát triển một nhiệm vụ.

Đọc **`docs/workflow-git.md`** để hoàn thành kết nối GitHub/GitLab, Pull Request, Code Review và tạo tag v0.1.0. Không đẩy thư mục `build` lên Repository.

## 8. Tài liệu nộp

- Phân tích yêu cầu: `docs/project-requirements.md`
- Product Backlog: `docs/product-backlog.md`
- Bảng phân công: `docs/team-assignments.md`
- Báo cáo thực hành: `docs/practice-report.md`
- Báo cáo kiểm thử: `docs/test-report.md`
- Trả lời 12 câu cuối bài: `docs/answers-12-questions.md`
- Danh sách minh chứng cần hoàn thiện trên máy nhóm: `docs/evidence-checklist.md`

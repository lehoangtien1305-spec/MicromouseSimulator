# TRẢ LỜI 12 CÂU HỎI CUỐI BÀI – THỰC HÀNH SỐ 01

## Câu 1. Mục đích dự án và các chức năng sau 9 buổi

Micromouse Simulator mô phỏng robot tự hành tìm đường trong mê cung 16 × 16 ô trên máy tính, nhằm hỗ trợ học tập, thử nghiệm thuật toán và quan sát hành vi robot mà không cần robot vật lý. Theo định hướng trong giáo trình, sản phẩm cuối học phần cần: (1) tạo/chỉnh sửa/lưu/nạp mê cung; (2) quản lý vị trí, hướng và trạng thái robot; (3) mô phỏng cảm biến phát hiện tường; (4) tìm đường bằng BFS, DFS, Flood Fill; (5) mô phỏng di chuyển; (6) hiển thị mê cung, robot, đường đi và trạng thái; (7) thống kê số bước, thời gian và kết quả tìm đường. Buổi 1 mới xây dựng phiên bản khởi tạo V0.1.0, chưa làm các chức năng mô phỏng hoàn chỉnh.

## Câu 2. Yêu cầu chức năng và phi chức năng

**Yêu cầu chức năng** mô tả *hệ thống làm được việc gì*. Ví dụ: FR01 khởi tạo mê cung; FR06 tìm kiếm đường đi; FR09 lưu và nạp dữ liệu mê cung. **Yêu cầu phi chức năng** mô tả *hệ thống được xây dựng hoặc hoạt động theo tiêu chuẩn/ràng buộc nào*. Ví dụ: NFR01 dùng C++17 trở lên; NFR03 biên dịch được bằng CMake; NFR04 thuật toán độc lập với công nghệ hiển thị; NFR05 có thể kiểm thử từng module.

## Câu 3. Các giai đoạn SDLC và lý do phải phân tích yêu cầu

Theo quy trình trình bày trong giáo trình: **Requirement Analysis** (phân tích yêu cầu) → **Planning** (lập kế hoạch) → **Software Design** (thiết kế) → **Implementation** (lập trình) → **Code Review** (rà soát mã nguồn) → **Testing** (kiểm thử) → **Integration** (tích hợp) → **Release** (phát hành) → **Maintenance** (bảo trì). Các hoạt động có thể lặp lại trong từng Sprint. Nếu viết code trước khi phân tích yêu cầu, nhóm dễ hiểu sai mục tiêu, bỏ sót chức năng, tổ chức module không phù hợp và phải sửa nhiều khi tích hợp.

## Câu 4. Product Backlog, Sprint Planning và Task

- **Product Backlog:** danh sách các yêu cầu/chức năng/công việc cần thực hiện cho sản phẩm, thường đi cùng mức ưu tiên và trạng thái.
- **Sprint Planning:** buổi lập kế hoạch xác định mục tiêu Sprint, chọn các mục từ Backlog và phân công thực hiện.
- **Task:** công việc cụ thể, có người phụ trách, kết quả mong đợi và trạng thái. Ví dụ: tạo `CMakeLists.txt`, viết `Application.cpp`, chạy thử CMake.

## Câu 5. Trình biên dịch C++, CMake và Visual Studio Code

- **Trình biên dịch C++ (GCC/MinGW-w64 hoặc MSVC):** dịch mã nguồn C++ thành mã đối tượng/chương trình thực thi (cùng bộ liên kết).
- **CMake:** công cụ cấu hình dự án và sinh hệ thống xây dựng phù hợp với compiler/generator, quản lý nhiều tệp, chuẩn ngôn ngữ và tùy chọn build.
- **Visual Studio Code:** trình soạn thảo/môi trường làm việc, hỗ trợ quản lý tệp, extension, Terminal và gỡ lỗi; bản thân extension C/C++ không thay thế compiler.

Trong dự án: mở thư mục bằng VS Code, chạy CMake để cấu hình và build, compiler sẽ thực hiện biên dịch.

## Câu 6. Header File, Source File và lý do chia nhiều tệp

**Header File (`.h`)** chứa khai báo lớp, hàm và giao diện sử dụng; ví dụ `Application.h` khai báo `initialize()`, `run()`, `shutdown()`. **Source File (`.cpp`)** chứa phần định nghĩa/cài đặt; ví dụ `Application.cpp` in thông báo từng giai đoạn. Tách tệp giúp phân chia trách nhiệm, tái sử dụng, dễ kiểm thử, dễ bảo trì và giảm xung đột khi nhiều người làm việc. `main.cpp` chỉ giữ vai trò khởi động/điều phối chương trình.

## Câu 7. Vai trò include, src, docs và tests

- `include/`: chứa các tệp header khai báo lớp/hàm/giao diện module.
- `src/`: chứa mã nguồn `.cpp` cài đặt chức năng và `main.cpp`.
- `docs/`: chứa tài liệu phân tích, yêu cầu, kế hoạch, báo cáo.
- `tests/`: chứa mã lệnh hoặc chương trình kiểm thử, nhằm xác minh tính đúng đắn của phần mềm.

## Câu 8. Git, GitHub và các khái niệm

**Git** là hệ thống quản lý phiên bản phân tán, hoạt động cả trên máy cục bộ. **GitHub** là dịch vụ lưu trữ và cộng tác trên Git Repository qua mạng, hỗ trợ Pull Request, review và phân quyền.

- **Repository:** kho mã nguồn có lịch sử phiên bản.
- **Commit:** bản ghi một tập thay đổi vào lịch sử.
- **Branch:** nhánh phát triển độc lập ở mức lịch sử commit.
- **Merge:** hợp nhất các thay đổi từ nhánh này sang nhánh khác.
- **Pull Request:** yêu cầu đề xuất tích hợp thay đổi, cho phép kiểm tra và trao đổi trước khi merge trên nền tảng GitHub/GitLab.

## Câu 9. Vì sao cần Code Review? Ít nhất ba nội dung cần kiểm tra

Code Review giúp phát hiện lỗi trước khi tích hợp, nâng chất lượng mã nguồn, bảo đảm cùng quy ước và chia sẻ kiến thức trong nhóm. Cần kiểm tra ít nhất: (1) mã nguồn build được, không xuất hiện lỗi/cảnh báo chưa giải thích; (2) tên tệp, tên biến/hàm rõ nghĩa; (3) có lỗi logic hoặc trường hợp biên chưa xử lý không; (4) `.gitignore` có ngăn build, `.exe`, tệp tạm bị commit không; (5) mã nguồn có phù hợp cấu trúc và quy ước nhóm không. Giáo trình yêu cầu người review để lại ít nhất hai nhận xét kỹ thuật hoặc xác nhận đã kiểm tra.

## Câu 10. Giải thích các lệnh Git

| Lệnh | Ý nghĩa |
|---|---|
| `git status` | Xem nhánh hiện tại, tệp đã sửa/chưa theo dõi và trạng thái staging. |
| `git add .` | Đưa các thay đổi trong thư mục hiện tại và các thư mục con vào Staging Area (theo quy tắc `.gitignore`). |
| `git commit -m "feat: add initial C++ program"` | Ghi nhận các thay đổi đã staged thành một commit với thông điệp mô tả. |
| `git push` | Gửi commit/nhánh cục bộ tới remote theo cấu hình upstream. |
| `git switch -c feature/project-setup` | Tạo nhánh mới `feature/project-setup` từ vị trí hiện tại và chuyển sang nhánh đó. |

## Câu 11. Vì sao tách thuật toán, mô hình robot và giao diện?

**Mô hình robot** lưu trạng thái như vị trí/hướng; **thuật toán tìm đường** quyết định hướng/đường đi dựa trên dữ liệu mê cung; **giao diện** chịu trách nhiệm vẽ và hiển thị. Tách các module theo trách nhiệm giúp thay thế, kiểm thử và tái sử dụng độc lập. Khi chuyển từ 2D sang 3D/VR, phần hiển thị có thể được thay hoặc mở rộng trong khi mô hình và thuật toán vẫn giữ giao diện dữ liệu nhất quán, giảm việc viết lại logic cốt lõi.

## Câu 12. Clone về máy mới không build được: nguyên nhân và quy trình xử lý

**Nguyên nhân có thể có:** chưa cài compiler/CMake hoặc PATH sai; compiler không hỗ trợ C++17; dùng generator không phù hợp; thiếu tệp header/source trong commit; đường dẫn trong `CMakeLists.txt` sai; khác biệt hệ điều hành/đường dẫn; dự án phụ thuộc vào tệp chỉ có trên máy lập trình ban đầu; đưa tệp build cũ vào Repository gây xung đột cấu hình.

**Quy trình xử lý chuyên nghiệp:**

1. Ghi nhận lỗi, hệ điều hành, phiên bản compiler/CMake/Git và lệnh gây lỗi; mở Task/Issue cho vấn đề.
2. Kiểm tra bằng `git status`, `git branch`, `git log` để xác nhận đúng nhánh và commit; kiểm tra đủ các tệp theo cấu trúc dự án.
3. Chạy `g++ --version`, `cmake --version`, `git --version`; sửa PATH/cài công cụ còn thiếu.
4. Xóa thư mục `build` phát sinh ở máy mới, cấu hình lại bằng `cmake -S . -B build`, sau đó `cmake --build build`.
5. Đọc thông báo lỗi; nếu lỗi do cấu hình hoặc thiếu tệp, sửa trên nhánh `feature/*`, không sửa trực tiếp bản ổn định.
6. Chạy chương trình, thực hiện kiểm thử, nhờ thành viên khác Code Review rồi tạo/hoàn tất Pull Request vào `develop`.
7. Clone lại trong môi trường sạch và kiểm thử TC08; cập nhật README, Test Report, Issue và ghi lại cách khắc phục.

**Lưu ý:** đây là quy trình đề xuất cho tình huống giả định. Kết luận nguyên nhân cụ thể chỉ có thể đưa ra khi có thông báo lỗi thực tế.

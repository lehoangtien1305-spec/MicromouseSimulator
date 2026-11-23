# Phân tích yêu cầu – Micromouse Simulator

## 1. Mô tả bài toán

Xây dựng phần mềm mô phỏng robot Micromouse di chuyển trên mê cung **16 × 16 ô**, giúp quan sát việc nhận biết vật cản, xác định vị trí, lựa chọn đường đi và kết quả mô phỏng. Trong bài thực hành số 01 chỉ khởi tạo hệ thống; các chức năng mô phỏng chi tiết thuộc các buổi tiếp theo.

## 2. Người sử dụng

Sinh viên, giảng viên và người học/lập trình viên nghiên cứu kỹ thuật mô phỏng robot tự hành và thuật toán tìm đường.

## 3. Vấn đề giải quyết

Cho phép học tập, thử nghiệm và đánh giá phương án điều khiển robot trong môi trường mê cung ảo mà không cần phần cứng robot thật.

## 4. Yêu cầu chức năng

| Mã | Yêu cầu |
|---|---|
| FR01 | Khởi tạo mê cung |
| FR02 | Thiết lập vị trí xuất phát |
| FR03 | Thiết lập vị trí đích |
| FR04 | Quản lý vị trí và hướng robot |
| FR05 | Mô phỏng cảm biến tường |
| FR06 | Tìm kiếm đường đi |
| FR07 | Mô phỏng robot di chuyển |
| FR08 | Hiển thị quá trình mô phỏng |
| FR09 | Lưu và nạp dữ liệu mê cung |
| FR10 | Hiển thị kết quả mô phỏng |

## 5. Yêu cầu phi chức năng

| Mã | Yêu cầu |
|---|---|
| NFR01 | Phát triển bằng C++17 trở lên |
| NFR02 | Mã nguồn có cấu trúc module rõ ràng |
| NFR03 | Chương trình biên dịch được bằng CMake |
| NFR04 | Thuật toán độc lập với công nghệ hiển thị |
| NFR05 | Có khả năng kiểm thử từng module |
| NFR06 | Có thể mở rộng môi trường hiển thị 3D/VR |
| NFR07 | Có tài liệu hướng dẫn xây dựng và sử dụng |

## 6. Các nhóm chức năng dự kiến

Quản lý mê cung; quản lý robot; cảm biến mô phỏng; tìm đường (BFS, DFS, Flood Fill); mô phỏng di chuyển; hiển thị; thống kê số bước, thời gian và kết quả tìm đường.

## 7. Mở rộng dự án

Thiết kế module dữ liệu mê cung, robot, thuật toán và hiển thị tách rời để sau này có thể thay giao diện 2D bằng 3D/VR mà không phải viết lại toàn bộ phần xử lý thuật toán. Bổ sung các bộ kiểm thử độc lập cho từng module.

## 8. Phạm vi V0.1.0

**Có:** cấu trúc dự án nhiều tệp, lớp `Application`, CMake, README, Git/.gitignore, kế hoạch và kiểm thử khởi tạo.

**Chưa có:** mê cung hoạt động, robot, cảm biến, tìm đường, đồ họa, đo hiệu năng. Không ghi các chức năng đó là đã hoàn thành trong buổi 1.

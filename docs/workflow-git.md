# Hướng dẫn Git Workflow – Hoàn tất trên GitHub/GitLab

> Bộ nguồn giao kèm có thể chứa **Git history cục bộ**, nhưng chưa có URL remote, Pull Request, review của người khác hoặc tag release. Những minh chứng này phải được thực hiện bằng tài khoản của nhóm.

## A. Nếu dùng Repository cục bộ đóng gói sẵn

1. Giải nén, mở Terminal tại `MicromouseSimulator`.
2. Kiểm tra trạng thái/nhánh/log:

```bash
git status
git branch -a
git log --all --oneline --graph --decorate
```

3. Tạo một Repository **trống** trên GitHub/GitLab tên `MicromouseSimulator` (không khởi tạo README trên web nếu muốn đẩy lịch sử hiện có).
4. Kết nối remote (thay URL của chính nhóm):

```bash
git remote add origin <repository-url>
git push -u origin main
git push -u origin develop
git push -u origin feature/project-setup
```

Nếu giải nén không còn thư mục `.git`, làm phần B.

5. Mở Pull Request **từ `feature/project-setup` vào `develop`**.
6. Một thành viên khác kiểm tra khả năng build, tên tệp/tên biến, lỗi logic, quy tắc .gitignore và để lại **ít nhất 2 nhận xét kỹ thuật hoặc xác nhận kiểm tra**.
7. Merge PR vào `develop` sau khi review và kiểm tra xong.
8. Đồng bộ `develop`, build/test lại, rồi mới tạo Git Tag:

```bash
git switch develop
git pull origin develop
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
git tag -a v0.1.0 -m "Initial project setup"
git push origin v0.1.0
```

**Quan trọng:** Đừng tạo tag trên nhánh feature chưa được tích hợp. Tạo tag tại commit đúng của bản bàn giao đã review và test. Nhánh `main` chưa nhất thiết chứa phiên bản này cho đến khi nhóm thực hiện hợp nhất/release theo quy trình riêng.

## B. Nếu cần khởi tạo Git mới (không có `.git`)

```bash
git init
git branch -M main
git add .
git commit -m "chore: initialize project"
git switch -c develop
git switch -c feature/project-setup
# Thực hiện thay đổi thật và commit trên nhánh feature, rồi kết nối remote theo phần A.
```

Để tạo commit có nội dung trên nhánh feature, phải có **thay đổi thực tế** sau commit đầu; không tạo commit giả để đối phó với yêu cầu.

## C. Lệnh thường dùng

```bash
git status
git add .
git commit -m "feat: add initial C++ program"
git push -u origin feature/project-setup
```

## D. Clone kiểm thử TC08

```bash
git clone <repository-url> MicromouseSimulator-clone
cd MicromouseSimulator-clone
git switch develop
cmake -S . -B build
cmake --build build
ctest --test-dir build --output-on-failure
```

Cần thử trên máy mới hoặc thư mục mới. Lưu ảnh màn hình/terminal (không tự tạo minh chứng giả).

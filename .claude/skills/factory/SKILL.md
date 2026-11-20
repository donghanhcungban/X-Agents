---
name: factory
description: Điều phối MVP, hoàn thiện và tối ưu X-Agents.
---

Đọc `AGENTS.md`, PLAN đang làm và `scripts/factory.sh flow --json`. Luận theo trạng thái thực của sản phẩm. Hub đang chạy chỉ nhận một giai đoạn cũ qua `stage init --adopt` khi có bằng chứng và quyền của chủ dự án. Lệnh khung dùng `scripts/factory.sh <lệnh>`; ba giai đoạn có thể trình, mở lại để sửa và duyệt lần lượt.

- MVP: chọn một hành vi dùng thử được, viết test đỏ cho hành vi đó, rồi triển khai một lát. Trong thư mục package, chạy `uv run pytest -q tests/<file>.py::<test>` để nhận phản hồi từng lần sửa. Console chạy từ `platform/console` bằng `uv run python -m console`.
- Hoàn thiện: chạy `scripts/dev-task.sh gate <gói>`, nghiệm thu luồng đầy đủ và xử lý phát hiện của review trước khi merge theo quy trình Git của hub.
- Tối ưu: đo cùng đầu vào trước và sau, kiểm lại Gate rồi trình kết quả. Phát hành theo quy trình và quyền của công ty tương ứng.

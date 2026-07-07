# Hướng Dẫn Dành Cho Agent (AGENT.md)

Tài liệu này cung cấp hướng dẫn hoạt động cho các AI Agent khi làm việc trong kho lưu trữ `lazycv`.

## 1. Tổng Quan Dự Án
Kho lưu trữ này chứa các mẫu CV tiếng Anh và tiếng Việt được viết bằng ngôn ngữ **Typst** (`.typ`), được chia thành hai hướng chính: **Data Analyst (DA)** và **Data Engineer (DE)**. Mục tiêu là tùy chỉnh (tailor) CV cho từng nhà tuyển dụng/công ty cụ thể để tối ưu tỷ lệ đậu vòng hồ sơ.

## 2. Cấu Trúc Thư Mục
* `DA/` — File CV gốc hướng Data Analyst (Anh & Việt).
* `DE/` — File CV gốc hướng Data Engineer (Anh).
* `RiseCapital_DA/` — File CV hướng DA đã được tùy chỉnh cho công ty Rise Capital.
* `hpt-DA/` — File CV hướng DA được tùy chỉnh cho công ty HPT.
* `sts_DA/` — File CV hướng DA được tùy chỉnh cho công ty STS.
* `operation/` — File CV hướng Vận hành (Operations Analyst / Staff).
* `template.typ` — Định dạng layout chung của CV.
* `PERSONAL_PROFILE.md` — File chứa toàn bộ thông tin cá nhân chuẩn của ứng viên, được tổng hợp từ tất cả các CV.

## 3. Quy Tắc Hoạt Động Của Agent (Strict Rules)

### Quy trình tạo và xử lý CV cho công ty mới:
Khi có yêu cầu chỉnh sửa CV cho một công ty mới, Agent **bắt buộc** phải thực hiện theo quy trình sau:
1. **Tạo thư mục làm việc riêng biệt:** Tên thư mục tuân theo định dạng `{tên_công_ty}_{Định_hướng}/`. Trong đó, định hướng (title/suffix) có thể đặt là **DA**, **BA**, **DE**, hoặc **BI** (ví dụ: `iBasic_BI/`, `QuangTrung_BA/`, `Fin20_DA/`).
   ```bash
   mkdir -p {tên_công_ty}_{DA/BA/DE/BI}/
   ```
2. **Sao chép và đổi tên các file CV:** Sao chép các file CV gốc tương ứng từ các thư mục nguồn (`DA/`, `DE/`, `operation/`) và đổi tên hậu tố của file CV thành định hướng tương ứng để đồng bộ (ví dụ: đổi từ `-CV-DA.typ` thành `-CV-BA.typ` khi ứng tuyển BA).
3. **Chắt lọc và cập nhật JD:** Đọc JD tuyển dụng của công ty, phân tách và chắt lọc các thông tin quan trọng nhất (Must-have, Nice-to-have, công việc chính, đãi ngộ) rồi lưu lại dưới dạng tệp tin Markdown (`.md`) ngay tại thư mục vừa tạo.
4. **Chỉnh sửa file nguồn `.typ`:** Tiến hành tối ưu hóa nội dung trong thư mục vừa tạo dựa trên thông tin JD đã chắt lọc.

### Các ràng buộc kỹ thuật (Constraints):
* 🔴 **CẤM BIÊN DỊCH:** Cấm tuyệt đối việc biên dịch (chạy lệnh `typst compile`) các file `.typ` trong bất kỳ thư mục nào trừ khi có yêu cầu trực tiếp từ người dùng. Chỉ thực hiện sửa mã nguồn.
* **Đồng bộ thông tin:** Khi chỉnh sửa CV cho công ty mới, phải đối chiếu với `PERSONAL_PROFILE.md` để đảm bảo mốc thời gian và thông tin cốt lõi (học vấn, thông tin liên hệ) không bị sai lệch nghiêm trọng.
* **Theo dõi tiến độ:** Trước khi thực hiện tác vụ, hãy kiểm tra `PROGRESS.md`. Ở cuối mỗi phiên làm việc, hãy cập nhật `PROGRESS.md` dựa theo cấu trúc của `PROGRESS_TEMPLATE.md` để bàn giao sạch sẽ cho Agent tiếp theo.

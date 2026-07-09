#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
)

#set text(
  font: "DejaVu Serif",
  size: 7.5pt,
  lang: "vi",
)

#set par(justify: true)

// --- Helper Functions for ATS --- Friendly Formatting ---
#let section(title) = {
  v(0.2em)
  text(size: 10pt, weight: "bold", upper(title))
  v(0em)
  line(length: 100%, stroke: 0.5pt + black)
  v(0.2em)
}

#let entry(title, date, sub: "", desc: []) = {
  block(width: 100%)[
    #text(weight: "bold")[#title] #h(1fr) #date \
    #if sub != "" [#text(style: "italic")[#sub] \ ]
    #v(0em)
    #desc
  ]
  v(0.5em)
}

// --- Header ---
#align(center)[
  #text(size: 16pt, weight: "bold")[NGUYỄN PHAN HOÀNG PHÚC] \
  #v(0em)
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Nhân viên Vận hành] \
  #v(0em)
  Thủ Đức, TP.HCM | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
// == #section("Mục tiêu nghề nghiệp")
// Với niềm đam mê lớn dành cho tối ưu hóa quy trình, quản trị vận hành và ứng dụng dữ liệu trong kinh doanh, tôi hướng tới mục tiêu xây dựng và cải tiến các quy trình vận hành hiệu quả nhằm thúc đẩy sự tăng trưởng bền vững của doanh nghiệp. Tôi luôn giữ tinh thần cầu thị, chủ động học hỏi và sẵn sàng ứng dụng tư duy phân tích dữ liệu để giải quyết các bài toán vận hành thực tế.

// --- Experience ---
== #section("Kinh nghiệm làm việc")

#entry(
  "Nhân viên Vận hành Dữ liệu (Data Analyst) | Newgen Invest", "03/2026 – Hiện tại",
  desc: [
    - Thiết kế và chuẩn hóa hệ thống quản lý khách hàng tiềm năng (Mini CRM) trên Google Sheets, tối ưu quy trình phân phối dữ liệu và phân quyền bảo mật chặt chẽ cho từng đội ngũ Kinh doanh.
    - Điều phối và tối ưu hóa việc phân bổ leads dựa trên hiệu suất thực tế của nhân viên sales, giúp nâng cao tỷ lệ chuyển đổi và tăng hiệu quả vận hành của phòng Kinh doanh.
    - Tự động hóa quy trình theo dõi báo cáo hàng ngày bằng công cụ Google Sheets (sử dụng IMPORTRANGE, Query), cung cấp dashboard cập nhật thời gian thực giúp ban quản lý giám sát tiến độ và hiệu suất công việc tức thì.
  ]
)

#entry(
  "Thực tập sinh Vận hành | ATG", "10/2025 – 12/2025",
  desc: [
    - Trực tiếp đối soát hơn 1.000 bản ghi vận hành và giao dịch mỗi ngày với tài liệu pháp lý, duy trì độ chính xác cao đạt 99% để kiểm soát chất lượng và giảm thiểu rủi ro vận hành.
    - Kiểm duyệt và chuẩn hóa hơn 1.500 tin tuyển dụng trên nền tảng boss.vn, đảm bảo chất lượng nội dung và tính nhất quán dữ liệu theo tiêu chuẩn vận hành của công ty.
    - Phối hợp với các bộ phận liên quan để xử lý các điểm nghẽn trong quy trình nhập liệu và nâng cao hiệu suất xử lý thông tin.
  ]
)

#entry(
  "Thực tập sinh Vận hành SEO | ECXO", "09/2025 – 10/2025",
  desc: [
    - Quản lý quy trình tối ưu hóa On-page cho hơn 50 trang đích, cải thiện cấu trúc trang (metadata, headers, breadcrumbs) để tối ưu trải nghiệm người dùng và hiệu suất truy cập.
    - Triển khai chiến dịch liên kết nội bộ (internal linking), tăng hiệu suất thu thập thông tin của công cụ tìm kiếm và tăng 10% lượt hiển thị tự nhiên.
  ]
)

// --- Projects ---
== #section("Dự án cá nhân")

#entry(
  "MoMo Top Up | Phân tích Vận hành Giao dịch", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
    - Phân tích hiệu suất vận hành của nền tảng dựa trên hơn *13.400 giao dịch (đạt 694,6 triệu VNĐ GMV)*, xác định xu hướng giá trị đơn hàng trung bình (AOV) ổn định ở mức 51.000 VNĐ và phát hiện các yếu tố thúc đẩy tăng trưởng theo mùa nhằm tối ưu hóa kế hoạch phân bổ nguồn lực đối tác.
    - Áp dụng *nguyên lý Pareto (80/20)* để phân khúc hành vi khách hàng, phát hiện nhóm 20% người dùng đóng góp 65% tổng doanh thu, từ đó đề xuất chương trình khách hàng thân thiết (VIP) nhằm giảm tỷ lệ rời bỏ và nâng cao hiệu quả giữ chân khách hàng.
    - Phân tích nhân khẩu học và phân nhóm (cohort analysis) để tối ưu hóa ROI cho các chiến dịch marketing, xác định nhóm khách hàng từ 23-32 tuổi tại các thành phố lớn là phân khúc chuyển đổi cao nhất.
    - Đánh giá hiệu suất sỉ và rủi ro tập trung đối tác từ 5 nhà mạng, đề xuất chiến dịch bán chéo để kích thích các nhà mạng tầm trung (Vinaphone, Mobifone) và giảm bớt sự phụ thuộc vào nhà mạng lớn (Viettel).
  ]
)

#entry(
  "Phân tích hành vi tài chính cá nhân | Dự án nhóm", "05/2025 – 07/2025",
  sub: link("https://github.com/hoangf384/pf-visualization")[github.com/hoangf384/pf-visualization],
  desc: [
    - Khắc phục hạn chế của dữ liệu khảo sát bằng cách mô phỏng tập dữ liệu tài chính của 20.000 người dùng thông qua *Python (SciPy, NumPy)*, áp dụng *phân phối chuẩn đa biến* và ma trận tương quan dựa trên dữ liệu từ Cục Thống kê Lao động Mỹ (BLS).
    - Thiết kế *dashboard tương tác trên Tableau* phục vụ bộ phận sản phẩm và vận hành; cung cấp khả năng phân đoạn nhân khẩu học chuyên sâu nhằm khám phá các hành vi tài chính tiềm ẩn và phát hiện các điểm nghẽn (pain points) trong hành trình trải nghiệm người dùng.
    - Trích xuất insight vận hành sản phẩm quan trọng: *tỷ lệ tiết kiệm của nhóm 18–25 tuổi ở mức âm (-26,9%)*, nguyên nhân chủ yếu do các chi phí cố định đầu tháng, qua đó bác bỏ giả định ban đầu về mức chi tiêu tùy ý cao (~8%).
    - Xây dựng chiến lược *thử nghiệm A/B*, đề xuất tính năng 'Cảnh báo chi tiêu chủ động' (Proactive Pacing Alerts) thay thế cho các báo cáo thụ động truyền thống, giúp can thiệp theo thời gian thực và cải thiện tỷ lệ tích lũy của khách hàng.
  ]
)

// --- Technical Skill ---
// == #section("Kỹ năng")
// #grid(
//   columns: (auto, auto, 1fr),
//   column-gutter: 0.5em,
//   row-gutter: 0.7em,
//   [*Công cụ Vận hành & Dữ liệu*], [:], [MS Excel & Google Sheets (Thiết lập CRM nâng cao, IMPORTRANGE, Query), Jira, Trello],
//   [*Cơ sở dữ liệu*], [:], [SQL, MySQL, BigQuery, SQL Server],
//   [*Trực quan hóa dữ liệu*], [:], [Tableau, Looker Studio, Power BI],
//   [*Lập trình & Tự động hóa*], [:], [Python (Pandas, scripts tự động hóa quy trình), R],
//   [*Phương pháp luận*], [:], [Phân tích quy trình (Process Mapping), Phân bổ Leads, Thống kê & Dự báo, Thử nghiệm A/B],
//   [*Công cụ khác*], [:], [Git, Docker, AI Tools (Antigravity-ide, Antigravity-cli)]
// )

// --- Education ---
== #section("Học vấn & Chứng chỉ")

#entry(
  "Hệ thống thông tin quản lý | HUB", "10/2022 – 03/2026",
  desc: [
    - Chuyên ngành: Khoa học Dữ liệu trong Kinh doanh | GPA: 3.2/4.0
    - Bán kết - Cuộc thi Data Analytics Competition 2024 (do Trường Đại học Ngân hàng TP.HCM tổ chức).
  ]
)
*#link("https://www.coursera.org/account/accomplishments/specialization/RHRR7XNFS7CN")[Chứng chỉ chuyên môn Google Data Analytics]*

*#link("https://drive.google.com/drive/folders/1JeagpuAhYDqcnOMRTjOjjw5pyBj5rDkt?usp=drive_link")[Chứng chỉ Tiếng Anh VSTEP – Bậc 4 (B2 CEFR)]*

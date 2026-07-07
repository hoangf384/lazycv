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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Business Data Analyst Intern] \
  #v(0em)
  Thủ Đức, TP.HCM | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Mục tiêu nghề nghiệp")
Với tư duy phân tích nhạy bén cùng khả năng xử lý số liệu cẩn thận, tỉ mỉ, tôi mong muốn ứng dụng các công cụ phân tích (Excel, SQL, Python) để hỗ trợ thu thập, dọn dẹp, và phân tích số liệu kinh doanh nhằm tối ưu hóa hiệu quả doanh thu và chương trình bán hàng tại VTV-Hyundai. Tôi luôn sẵn sàng phối hợp làm việc nhóm và chịu trách nhiệm với tiến độ công việc được giao.

// --- Experience ---
== #section("Kinh nghiệm làm việc")

#entry(
  "Thực tập sinh Vận hành Dữ liệu | ATG", "10/2025 – 12/2025",
  desc: [
    - Thực hiện kiểm tra, rà soát và đối soát hơn 1.000 bản ghi dữ liệu vận hành mỗi ngày đối chiếu với tài liệu pháp lý, duy trì độ chính xác và đầy đủ của thông tin đạt 99%.
    - Kiểm duyệt và chuẩn hóa hơn 1.500 bản ghi dữ liệu tin đăng tuyển dụng trên boss.vn, hỗ trợ công tác lưu trữ thông tin và giải quyết các lỗi nhập liệu.
  ]
)

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Hiện tại",
  desc: [
    - Thu thập và chuẩn hóa dữ liệu leads khách hàng tiềm năng trên Google Sheets, thiết lập hệ thống phân chia lead dựa trên dữ liệu hiệu suất của Sales để tăng tỷ lệ chốt số.
    - Phân tích và lập báo cáo định kỳ theo dõi doanh thu, trạng thái khách hàng và hiệu suất bán hàng hàng ngày, cung cấp insights hỗ trợ ban quản lý chi nhánh.
  ]
)

#entry(
  "Thực tập sinh SEO On-page | ECXO", "09/2025 – 10/2025",
  desc: [
    - Tối ưu hóa thẻ tiêu đề, thẻ mô tả (meta description) và thanh điều hướng (breadcrumbs) cho hơn 50 trang web đích.
    - Triển khai chiến lược liên kết nội bộ (internal linking), giúp tăng khả năng thu thập dữ liệu (crawlability) và cải thiện 10% số lượt hiển thị tự nhiên (organic impressions).
  ]
)


// --- Projects ---
== #section("Dự án đã thực hiện")

#entry(
  "MoMo Top Up | Phân tích Doanh thu & Vận hành Giao dịch", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Phân tích dữ liệu kinh doanh của hơn *13.400 giao dịch (đạt 694,6 triệu VNĐ GMV)* nhằm đánh giá hiệu quả bán hàng, theo dõi đơn hàng và phát hiện các yếu tố thúc đẩy tăng trưởng doanh thu theo mùa trong giai đoạn Quý 3 và Quý 4.
  - Áp dụng *nguyên lý Pareto (80/20)* trong phân đoạn hành vi người dùng; phát hiện *20% khách hàng tích cực nhất đóng góp đến 65% tổng doanh thu*, đề xuất giải pháp chăm sóc khách hàng VIP để giảm thiểu tỷ lệ rời bỏ.
  - Thực hiện *phân tích cohort và nhân khẩu học* bằng Excel và các công cụ trực quan để xác định nhóm khách hàng 23–32 tuổi tại các đô thị lớn mang lại tỷ lệ chuyển đổi cao nhất.
  - Đánh giá hiệu suất bán hàng của 5 đối tác nhà mạng để quản lý rủi ro tập trung, đề xuất các chương trình khuyến mãi bán chéo nhằm tối ưu hóa doanh thu.
]
)

#entry(
  "Phân tích hành vi tài chính cá nhân | Dự án nhóm", "05/2025 – 07/2025",
  sub: link("https://github.com/hoangf384/pf-visualization")[github.com/hoangf384/pf-visualization],
  desc: [
  - Khắc phục hạn chế của dữ liệu khảo sát bằng cách mô phỏng tập dữ liệu tài chính của 20.000 người dùng thông qua *Python (SciPy, NumPy)*, áp dụng *phân phối chuẩn đa biến* và ma trận tương quan dựa trên dữ liệu từ Cục Thống kê Lao động Mỹ (BLS).
  - Thiết kế *dashboard tương tác trên Tableau* phục vụ bộ phận Sản phẩm và Tăng trưởng; cung cấp khả năng phân đoạn nhân khẩu học chuyên sâu nhằm khám phá các hành vi tài chính tiềm ẩn và những khó khăn (pain points) của người dùng.
  - Trích xuất insight quan trọng để cải thiện sản phẩm: *tỷ lệ tiết kiệm của nhóm 18–25 tuổi ở mức âm (-26,9%)*, nguyên nhân chủ yếu do các chi phí cố định đầu tháng, qua đó bác bỏ giả định ban đầu về mức chi tiêu tùy ý cao (~8%).
  - Xây dựng chiến lược *A/B testing*, đề xuất tính năng 'Cảnh báo chi tiêu chủ động' (Proactive Pacing Alerts) thay thế cho các báo cáo thụ động truyền thống, giúp can thiệp theo thời gian thực và cải thiện tỷ lệ tiết kiệm cho người dùng.
  ]
)

// --- Technical Skill ---
== #section("Kỹ năng")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Phân tích & Báo cáo*], [:], [Thu thập & Xử lý số liệu kinh doanh, Lập báo cáo định kỳ (Excel, PowerPoint), Phân tích xu hướng],
  [*Công cụ văn phòng*], [:], [MS Excel (Pivot Table, Advanced formulas, VLOOKUP, INDEX/MATCH), MS PowerPoint, Word],
  [*Kỹ thuật dữ liệu*], [:], [SQL (MySQL, SQL Server), Python (Pandas, Polars, Scikit-learn), R],
  [*Trực quan hóa*], [:], [Tableau, Looker Studio, Power BI],
  [*Công cụ khác*], [:], [Git, Docker, Tiếng Anh (Giao tiếp & Đọc hiểu cơ bản - B2 CEFR)]
)


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
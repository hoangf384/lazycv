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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[BI Intern] \
  #v(0em)
  Thủ Đức, TP.HCM | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Mục tiêu nghề nghiệp")
Với kiến thức vững chắc về *Hệ thống thông tin* và *Phân tích dữ liệu*, tôi mong muốn ứng dụng kỹ năng viết truy vấn SQL, thiết kế quy trình ETL và trực quan hóa số liệu trên Power BI/Excel để hỗ trợ xây dựng, tự động hóa các báo cáo kinh doanh định kỳ tại iBasic. Tôi cẩn thận, tỉ mỉ và khao khát học hỏi các mô hình vận hành TMĐT để đóng góp giá trị cho doanh nghiệp.

// --- Experience ---
== #section("Kinh nghiệm làm việc")

#entry(
  "Thực tập sinh Vận hành Dữ liệu | ATG", "10/2025 – 12/2025",
  desc: [
    - Rà soát, kiểm tra và đối soát hơn 1.000 bản ghi dữ liệu vận hành mỗi ngày, kiểm soát lỗi nhập liệu để đảm bảo chất lượng, tính chính xác và đầy đủ của dữ liệu trong hệ thống đạt 99%.
    - Kiểm duyệt và chuẩn hóa hơn 1.500 tin đăng tuyển dụng trên boss.vn, làm sạch dữ liệu thô và cấu trúc lại metadata hệ thống.
  ]
)

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Hiện tại",
  desc: [
    - Thu thập và chuẩn hóa dữ liệu leads khách hàng tiềm năng trên Google Sheets, thiết lập hệ thống quản lý leads (Mini CRM) và phân chia số tự động dựa trên dữ liệu hiệu suất của Sales.
    - Xây dựng và tự động hóa các báo cáo kinh doanh định kỳ (hàng ngày/hàng tuần) bằng các hàm liên kết (IMPORTRANGE, QUERY, FILTER), cung cấp các dashboard theo dõi trực quan hỗ trợ ban quản lý.
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
  "MoMo Top Up", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Phân tích hơn *13.400 giao dịch (đạt 694,6 triệu VNĐ GMV)* nhằm đánh giá hiệu suất nền tảng, xác định giá trị đơn hàng trung bình *(AOV) duy trì ổn định ở mức 51.000 VNĐ* và phát hiện các yếu tố thúc đẩy tăng trưởng theo mùa trong giai đoạn Quý 3 và Quý 4.
  - Áp dụng *nguyên lý Pareto (80/20)* trong phân đoạn hành vi người dùng; phát hiện *20% người dùng tích cực nhất đóng góp đến 65% tổng doanh thu*, làm cơ sở đề xuất chương trình khách hàng thân thiết (VIP) nhằm giảm thiểu tỷ lệ rời bỏ (churn rate).
  - Thực hiện *phân tích đồng tuổi (cohort analysis) và nhân khẩu học* nhằm tối ưu hóa ROI cho các chiến dịch marketing; xác định *nhóm người dùng 23–32 tuổi tại các thành phố lớn* là phân khúc mang lại tỷ lệ chuyển đổi cao nhất, từ đó tinh chỉnh chiến lược thu hút người dùng.
  - Đánh giá hiệu suất của 5 đối tác nhà mạng nhằm giải quyết rủi ro tập trung (concentration risk); đề xuất các chương trình *khuyến mãi bán chéo (cross-selling)* để thúc đẩy doanh thu cho các nhà mạng tầm trung (Vinaphone, Mobifone) và giảm bớt sự phụ thuộc vào Viettel.
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
  [*Kỹ năng BI & ETL*], [:], [Viết & Tối ưu hóa truy vấn SQL, Quy trình ETL (Trích xuất, Làm sạch, Chuẩn hóa), Xây dựng & Tự động hóa báo cáo],
  [*Cơ sở dữ liệu*], [:], [MySQL, BigQuery, SQL Server, Google Sheets / Excel (Pivot Table, Advanced formulas)],
  [*Lập trình*], [:], [Python (Pandas, Polars, PySpark), R, Google Apps Script],
  [*Trực quan hóa*], [:], [Power BI, Looker Studio, Tableau],
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
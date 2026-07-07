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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Trading Analyst - Quant Research] \
  #v(0em)
  Thủ Đức, TP.HCM | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Mục tiêu nghề nghiệp")
Với tư duy định lượng tốt và nền tảng chuyên sâu về *Xác suất & Thống kê*, tôi mong muốn ứng dụng các công cụ phân tích dữ liệu (Python, R) và mô hình hóa định lượng để nghiên cứu hành vi giá, xây dựng/tối ưu hóa chiến lược giao dịch tại Fin20. Tôi giữ tinh thần cầu thị, chủ động chịu trách nhiệm và sẵn sàng tham gia đào tạo chuyên sâu về phân tích định lượng.

// --- Experience ---
== #section("Kinh nghiệm làm việc")

#entry(
  "Thực tập sinh Vận hành Dữ liệu | ATG", "10/2025 – 12/2025",
  desc: [
    - Thực hiện đối soát hơn 1.000 bản ghi vận hành mỗi ngày với hệ thống tài liệu pháp lý để kiểm tra tính hợp lệ và tuân thủ, kiểm soát rủi ro vận hành đạt độ chính xác 99%.
    - Kiểm duyệt và chuẩn hóa hơn 1.500 tin tuyển dụng trên nền tảng boss.vn, phát hiện các điểm bất thường và duy trì tính nhất quán dữ liệu của hệ thống.
  ]
)

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Hiện tại",
  desc: [
    - Thiết kế hệ thống quản lý dữ liệu leads (Mini CRM) trên Google Sheets, tối ưu quy trình vận hành và nâng cao tỷ lệ tiếp cận dựa trên dữ liệu hiệu suất bán hàng.
    - Trích xuất dữ liệu bán hàng và xây dựng báo cáo phân tích hiệu suất định kỳ hàng tuần/tháng, cung cấp các biểu đồ trực quan hóa dữ liệu theo dõi thời gian thực hỗ trợ ban quản lý đưa ra quyết định kinh doanh.
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
  "MoMo Top Up | Phân tích Giao dịch & Hành vi người dùng", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Phân tích chuỗi thời gian (time-series) trên hơn *13.400 giao dịch (đạt 694,6 triệu VNĐ GMV)* để đánh giá hiệu suất nền tảng, xác định xu hướng giá trị đơn hàng trung bình (AOV) ở mức 51.000 VNĐ và dự báo các yếu tố mùa vụ thúc đẩy tăng trưởng trong Q3 và Q4.
  - Áp dụng *nguyên lý Pareto (80/20)* phân đoạn hành vi người dùng; phát hiện nhóm *20% người dùng đóng góp đến 65% tổng doanh thu*, đề xuất xây dựng chính sách giữ chân nhóm khách hàng cốt lõi để hạn chế rủi ro churn.
  - Phân tích đồng tuổi (cohort analysis) kết hợp kiểm định giả thuyết thống kê về nhân khẩu học để tối ưu ROI tiếp thị; xác định *nhóm người dùng 23–32 tuổi tại các đô thị lớn* có tỷ lệ chuyển đổi cao nhất để định hình chiến dịch thu hút khách hàng mới.
  - Phân tích rủi ro tập trung (concentration risk) từ 5 nhà mạng đối tác, đề xuất giải pháp thúc đẩy bán chéo (cross-selling) cho các nhà mạng tầm trung nhằm giảm mức độ phụ thuộc vào Viettel.
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
  [*Phân tích định lượng*], [:], [Xác suất & Thống kê, Phân tích Chuỗi thời gian (Time-series), Applied ML],
  [*Lập trình & Mô hình*], [:], [Python (Pandas, Polars, SciPy, NumPy, Statsmodels), R, SQL, Pine Script (Cơ bản)],
  [*Cơ sở dữ liệu & Công cụ*], [:], [MySQL, BigQuery, SQL Server, Excel, Jupyter Notebook],
  [*Trực quan hóa*], [:], [Tableau, Looker Studio, Power BI],
  [*Công cụ khác*], [:], [Git, Docker]
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
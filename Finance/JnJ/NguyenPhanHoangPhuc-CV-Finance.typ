#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
)

#set text(
  font: "New Computer Modern",
  size: 8pt,
  lang: "en",
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
  #text(size: 16pt, weight: "bold")[NGUYEN PHAN HOANG PHUC] \
  #v(0em)
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Finance Intern] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Summary")
Ambitious and analytical *Management Information Systems* (MIS) student specializing in Business Data Science at the *University of Banking HCMC*, seeking the *Finance Intern* role. Eager to leverage strong coding skills in Python, data analysis, and process automation to drive efficiency in financial planning, forecasting, and reporting. Driven to collaborate cross-functionally as a finance business partner and translate complex financial datasets into actionable recommendations that support commercial decision-making.

// --- Experience ---
== #section("Work Experience")

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Built a Mini CRM on Google Sheets to combine scattered data into one master sheet and set up privacy rules for each Sales team.
    - Distributed leads based on performance, assigning the best leads to the teams with the highest closing rates to maximize revenue.
    - Automated daily reports using formulas (e.g., IMPORTRANGE) to turn raw data into real-time dashboards for tracking sales progress.
  ]
)

#entry(
  "Data Operation Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Validated 1,000+ daily operational records against legal documents with 99% accuracy.
    - Moderated 1,500+ job postings on boss.vn to ensure content quality and data consistency.
  ]
)

// #entryEmail Ứng Tuyển: Data Engineer Intern - HQSOFT

Người gửi: Nguyễn Phan Hoàng Phúc phuchoang0308@gmail.com
Người nhận: tuyendung@hqsoft.com.vn
Tiêu đề: [HQSOFT - DATA ENGINEER INTERN - Nguyễn Phan Hoàng Phúc]


Kính gửi Bộ phận Tuyển dụng Công ty HQSOFT,

Em được biết HQSOFT hiện đang tuyển dụng vị trí Thực tập sinh Data Engineer để cùng phát triển hệ thống dữ liệu phục vụ hơn 500+ khách hàng doanh nghiệp trong lĩnh vực quản lý phân phối và bán lẻ (DMS). Em vừa tốt nghiệp chuyên ngành Hệ thống Thông tin Quản lý (MIS) tại HUB (tháng 03/2026) và hiện đang sẵn sàng làm việc Full-time ngay lập tức. Với nền tảng kỹ thuật vững chắc về SQL và các dự án thực tế về xây dựng Pipeline dữ liệu, em rất mong muốn được cống hiến năng lực của mình cho công ty.

Em tự tin có thể nhanh chóng hòa nhập, học hỏi và đóng góp giá trị cho team Data của HQSOFT nhờ các điểm chạm thực tế sau:

    Tư duy dữ liệu nghiệp vụ (Sales/CRM/Inventory): Trong thời gian làm Data Analyst tại Newgen Invest, em đã trực tiếp thiết kế hệ thống Lead Management (Mini CRM) và tự động hóa các báo cáo doanh thu. Em hiểu rõ cấu trúc dữ liệu bán hàng và cách chuyển hóa chúng thành các chỉ số BI có nghĩa cho doanh nghiệp.

    Kỹ năng thiết kế ETL/ELT Pipelines & Data Modeling: Em đã xây dựng dự án cá nhân Customer Behavioral Analytics Pipeline sử dụng PySpark để xử lý batch raw data, thiết lập kiến trúc Medallion (Bronze-Silver-Gold) trên Google Cloud Storage và thực hiện biến đổi dữ liệu (ELT) bằng dbt trên BigQuery. Em nắm vững cách thiết kế Star Schema (Fact/Dimension) để tối ưu hóa hiệu năng truy vấn SQL.

    Khả năng tự học và làm việc độc lập: Em đã xây dựng hệ thống Job Board Analytics Pipeline giả lập tải lượng lớn (~10,000 records/5 phút), sử dụng Apache Airflow để điều phối DAGs, lưu trữ trên Cassandra + MySQL, và đóng gói chạy trên hạ tầng Docker/AWS EC2. Kỹ năng này giúp em sẵn sàng tiếp cận nhanh các công nghệ mới theo hướng dẫn của Mentor tại công ty.

    Trực quan hóa dữ liệu: Em thành thạo sử dụng Power BI và Looker Studio để thiết kế báo cáo phân tích tự động hóa giúp doanh nghiệp đưa ra quyết định dựa trên dữ liệu.


Em đã đính kèm CV chi tiết trong email này để Anh/Chị tiện tham khảo. Ngoài ra, Anh/Chị cũng có thể xem chi tiết mã nguồn các dự án dữ liệu em đã triển khai tại Github: github.com/hoangf384.

Em rất mong có cơ hội được tham gia một buổi trao đổi hoặc phỏng vấn ngắn để được lắng nghe thêm về bài toán dữ liệu lớn tại HQSOFT cũng như trình bày rõ hơn về việc em có thể hỗ trợ đội ngũ giải quyết các công việc thực tế ra sao.

Em xin chân thành cảm ơn Anh/Chị đã dành thời gian xem hồ sơ của em. Chúc Anh/Chị một ngày làm việc hiệu quả!

Trân trọng,

Nguyễn Phan Hoàng Phúc
Cựu sinh viên ngành Hệ thống Thông tin Quản lý - HUB

    Số điện thoại: 0854 519 237

    LinkedIn: linkedin.com/in/hoangf384

    Github: github.com/hoangf384



(
//  "Data Annotator | Data Corp Viet Nam", "07/2024 – 09/2024",
// desc: [
//   - Labeled traffic-related datasets (road markings, vehicle types) to support ML model training.
//   - Applied multi-stage quality checks and manual review, achieving >99% annotation accuracy across 10k+ samples
//   ]
// )

// --- Projects ---
== #section("Projects")

#entry(
  "MoMo Top Up", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Analyzed over *13.4K+ transactions (694.6M GMV)* to evaluate platform performance, identifying a *stable 51K VND AOV* and discovering strong Q3-Q4 seasonal growth drivers.
  - Applied the *Pareto (80/20) principle* to segment user behavior, uncovering that the *top 20% of active users contribute 65% of total revenue*, and proposed a targeted VIP Loyalty program to mitigate churn.
  - Conducted *cohort and demographic analysis* to optimize marketing ROI, identifying *users aged 23–32 in major cities* as the *highest-converting segment to refine user acquisition strategies*.
  - Evaluated partner performance across 5 active telcos to address concentration risks, formulating *cross-selling promotions* to stimulate mid-tier merchants (Vinaphone, Mobifone) and reduce heavy reliance on Viettel.
 // - Synthesized core financial metrics (GMV, ARPU, AOV, Revenue) into an executive dashboard, translating complex transaction data into actionable strategies to maximize business profit margins. 
]
)

#entry(
  "Personal Finance Behavioral Analytics | Group Project", "05/2025 – 07/2025",
  sub: link("https://github.com/hoangf384/pf-visualization")[github.com/hoangf384/pf-visualization],
  desc: [
  - Simulated a highly realistic financial dataset of 20,000 users using *Python (SciPy, NumPy)*, applying *multivariate normal distributions* and correlation matrices based on U.S. BLS data to overcome survey limitations.
  - Designed an interactive *Tableau dashboard* tailored for Product and Growth teams, enabling robust demographic segmentation to uncover hidden financial behaviors and user pain points.
  - Extracted a crucial product insight: the 18–25 age cohort suffers a *-26.9% savings rate* driven primarily by early-month fixed costs, invalidating the assumption of high discretionary spending (\~8%).
  - Formulated an actionable *A/B testing strategy* proposing "Proactive Pacing Alerts" to replace traditional reactive reporting, aiming to intervene in real-time and improve user savings rates.
  ]
)

// --- Technical Skills ---
== #section("Technical Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Programming*], [:], [Python (Pandas, NumPy, SciPy), SQL, R],
  [*Data*], [:], [MS Excel (Pivot Tables, Advanced Formulas,...)],
  [*Visualization (BI)*], [:], [Power BI, Tableau, Looker Studio],
  [*Databases*], [:], [MySQL, BigQuery, SQL Server],
  [*Other Tools*], [:], [Git, Docker, AI agents (harness engineering)]
)

// --- Education ---
== #section("Education & Qualifications")

#entry(
  "Management Information Systems | HUB", "10/2022 – 03/2026",
  desc: [
    - Specialization: Business Data Science GPA: 3.2/4.0
    - Semi-finalist - Data Analytics Competition 2024 (Organized by HUB University).
  ]
)
*#link("https://www.coursera.org/account/accomplishments/specialization/RHRR7XNFS7CN")[Google Data Analytics Professional Certificate]*

*#link("https://drive.google.com/drive/folders/1JeagpuAhYDqcnOMRTjOjjw5pyBj5rDkt?usp=drive_link")[VSTEP – Level 4 (B2 CEFR)]*

*#link("https://github.com/walkinglabs/learn-harness-engineering")[Harness Engineering for AI Agents (WalkingLabs)]*

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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Data Analyst] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Summary")
Eager to learn and work under mentorship as a Data Analyst Intern at MockCorp. Proficient in Python (Pandas, NumPy) and SQL, with hands-on experience in building automated reports, designing interactive Tableau dashboards, and performing customer behavior analysis to deliver actionable business insights.




// --- Experience ---
== #section("Work Experience")

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Built a Mini CRM on Google Sheets and MS Excel to combine scattered data and optimize database management.
    - Distributed customer leads based on team performance metrics to maximize conversion and revenue generation.
    - Automated daily reporting workflows using advanced formulas to transform raw sales data into real-time dashboards.
  ]
)

#entry(
  "Data Operation Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Validated 1,000+ daily operational records against legal documents with 99% accuracy.
    - Moderated 1,500+ job postings on boss.vn to ensure content quality and data consistency.
  ]
)

#entry(
  "SEO On-page Intern | ECXO", "09/2025 – 10/2025",
  desc: [
    - Optimized titles, meta descriptions, and breadcrumbs for 50+ pages.
    - Implemented internal links, increasing crawlability and organic impressions by 10%.
  ]
)

#entry(
 "Data Annotator | Data Corp Viet Nam", "07/2024 – 09/2024",
desc: [
  - Labeled traffic-related datasets (road markings, vehicle types) to support ML model training.
  - Applied multi-stage quality checks and manual review, achieving >99% annotation accuracy across 10k+ samples
  ]
)

// --- Projects ---
== #section("Projects")

#entry(
  "MoMo Top Up", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Analyzed over *13.4K+ transactions (694.6M GMV)* using *Python (Pandas, NumPy)* and *SQL* to evaluate performance and discover key seasonal drivers.
  - Applied the *Pareto (80/20) principle* to segment *customer behavior*, uncovering that the *top 20% of active users contribute 65% of total revenue* to propose retention strategies.
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

#entry(
  "Customer Behavioral Analytics Pipeline", "11/2025 – 03/2026",
  sub: link("https://github.com/hoangf384/Bigdata")[github.com/hoangf384/Bigdata],
  desc: [
  - Engineered a containerized *PySpark batch ingestion pipeline* to extract and unify multi-format raw datasets (JSON, CSV, Parquet) from diverse operational modules.

  - Architected a scalable *Medallion data workflow* (*Bronze-Silver-Gold*), utilizing *Google Cloud Storage* as the *Bronze data lake* by converting raw logs into optimized Parquet files.

  - Orchestrated *ELT transformations* in *BigQuery* using *dbt*, modeling *external GCS tables* into staging, intermediate (*Silver*), and business-ready mart tables (*Gold*).

  - Integrated *Gold-layer mart tables* with *Looker Studio* or *Metabase*, delivering high-performance, automated Business Intelligence dashboards for downstream analytics.
]
)

#entry(
  "Job Board Analytics Pipeline", "01/2026 – 02/2026",
  sub: link("https://github.com/hoangf384/dataengineering")[github.com/hoangf384/dataengineering],
  desc: [
  - Built a data pipeline simulating a *Job Board platform*, answering the question: _"How much did a recruitment campaign spend and how many applications did it generate?"_

  - Designed a *Cassandra + MySQL* architecture — Cassandra for high-throughput event ingestion and MySQL for business dimensions and aggregated analytics.

  - Developed a *PySpark incremental ETL* using *watermark metadata* to process only new tracking events each batch. Built a *data generator module* producing ~10,000 records every 5 minutes to simulate continuous traffic, orchestrated hourly via *Apache Airflow DAGs*.

  - Deployed *Dockerized services* across *3 AWS EC2 instances*, connected via *Tailscale VPN Mesh* and *VPC (Security Group)*, with centralized logging on *S3* and *IAM Roles* for credential-free access.
  ]
)

#entry(
  "E-commerce ETL Data Pipeline", "08/2025 – 09/2025",
  sub: link("https://github.com/hoangf384/crawling-data")[github.com/hoangf384/crawling-data],
  desc: [
    - Engineered an automated *Python ETL pipeline* using *Selenium* to extract dynamic *E-commerce* product catalogs, effectively bypassing lazy-loading and complex JavaScript rendering.
    - Architected a *Star Schema* data warehouse (Fact/Dimension) to consolidate scattered technical specifications, enforcing strict referential integrity (PK/FK) across 8+ tables.
    - Executed rigorous *Data Quality* processing to cleanse, deduplicate, and standardize raw web extractions, ensuring absolute data accuracy for downstream analytics.
    - Deployed a robust ingestion architecture featuring comprehensive *Error Logging* for pipeline monitoring, utilizing *Docker Compose* to orchestrate an isolated and stable *MySQL* storage layer.
  ]
)

// --- Technical Skills ---
== #section("Technical Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Programming*], [:], [Python (Pandas, NumPy, Polars, PySpark), SQL, R],
  [*Visualization*], [:], [Tableau, Looker Studio, Power BI],
  [*Data Tools*], [:], [MS Excel, Jupyter Notebook, Automated Reporting],
  [*Databases*], [:], [MySQL, SQL Server, Database Management],
  [*Cloud Platforms*], [:], [GCP (GCS, BigQuery), AWS (EC2, S3, IAM)],
  [*Other Tools*], [:], [Git, Docker, AI Tools (Antigravity-ide; Antigravity-cli) AI agent, linux, Tailscale VPN],
  [*Data Engineering*], [:], [Apache Spark, Apache Airflow, dbt, ETL/ELT Pipelines, Incremental Processing],
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

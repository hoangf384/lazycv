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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Data Engineer Intern] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]


// --- Professional Summary ---
#section("Summary")
Final-year Management Information Systems student with a *strong growth mindset*, *highly proactive*, and *eager to learn* from experienced mentors to accelerate my engineering skills. Passionate about applying technologies to optimize business workflows, with a special interest in *integrating AI and AI agents* into data engineering and real-world analytics pipelines. Equipped with foundational knowledge of *Python, SQL, PySpark*, and modern data modeling (*Star Schema, dbt*). Seeking a *Data Engineer Intern* role to receive direct guidance, contribute to building scalable data pipelines, and apply innovative AI solutions in a practical enterprise environment.

// --- Experience ---
#section("Work Experience")


#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Designed and standardized a lead management system (Mini CRM) on Google Sheets to consolidate customer data and optimize lead distribution workflows.
    - Built and automated daily and weekly sales reporting pipelines using advanced formulas (IMPORTRANGE, QUERY, FILTER), delivering real-time dashboards to management.
  ]
)
#entry(
  "Data Operation Intern | ATG", "09/2025 – 12/2025",
  desc: [
    - Validated 1,000+ daily operational records against legal documents with 99% accuracy.
    - Moderated 1,500+ job postings on boss.vn to ensure content quality and data consistency.
  ]
)

// #entry(
//   "SEO On-page Intern | ECXO", "09/2025 – 10/2025",
//   desc: [
//     - Optimized titles, meta descriptions, and breadcrumbs for 50+ pages.
//     - Implemented internal links, increasing crawlability and organic impressions by 10%.
//   ]
// )
// --- Projects ---
#section("Projects")

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

// #entry(
//   "E-commerce ETL Data Pipeline", "08/2025 – 09/2025",
//   sub: link("https://github.com/hoangf384/crawling-data")[github.com/hoangf384/crawling-data],
//   desc: [
//     - Engineered an automated *Python ETL pipeline* using *Selenium* to extract dynamic *E-commerce* product catalogs, effectively bypassing lazy-loading and complex JavaScript rendering.
//     - Architected a *Star Schema* data warehouse (Fact/Dimension) to consolidate scattered technical specifications, enforcing strict referential integrity (PK/FK) across 8+ tables.
//     - Executed rigorous *Data Quality* processing to cleanse, deduplicate, and standardize raw web extractions, ensuring absolute data accuracy for downstream analytics.
//     - Deployed a robust ingestion architecture featuring comprehensive *Error Logging* for pipeline monitoring, utilizing *Docker Compose* to orchestrate an isolated and stable *MySQL* storage layer.
//   ]
// )

#section("Technical Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Programming*], [:], [Python, SQL, PySpark],
  [*Data Engineering*], [:], [Apache Spark, Apache Airflow, dbt, ETL/ELT Pipelines, Incremental Processing],
  [*Databases*], [:], [Cassandra, MySQL, SQL Server, BigQuery, DuckDB],
  [*Cloud*], [:], [AWS (EC2, S3, IAM), GCP (GCS, BigQuery, Looker)],
  [*Tools & BI*], [:], [Docker, Git, Linux, Power BI, Tableau, AI agents]
)

// --- Education ---
#section("Education & Qualifications")

#entry(
  "Management Information Systems | HUB", "10/2022 – 03/2026",
  desc: [
    - Specialization: Business Data Science GPA: 3.2/4.0
    - Semi-finalist - Data Analytics Competition 2024 (Organized by HUB University).
  ]
)

*#link("https://drive.google.com/file/d/1xgSiJNd5Go60XJMRX7NuYy6zq-x75PkY/view")[VSTEP – Level 4 (B2 CEFR)]*

*#link("https://www.coursera.org/account/accomplishments/specialization/RHRR7XNFS7CN")[Google Data Analytics Professional Certificate]* && *#link("https://github.com/walkinglabs/learn-harness-engineering")[Harness Engineering for AI Agents (WalkingLabs)]*





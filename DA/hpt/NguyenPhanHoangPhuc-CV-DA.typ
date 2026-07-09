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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Data Analytics & AI Intern] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Summary")
Driven by a commitment to continuous learning and excellence, I am deeply passionate about Data Analytics, Strategy, and Business Growth. My long-term ambition is to architect impactful, data-driven business strategies that foster sustainable success, anchored by a strong work ethic and a results-oriented mindset.


// --- Experience ---
== #section("Work Experience")

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Built a central Mini CRM on Google Sheets, consolidating scattered data source into a single source of truth with customized access control for sales teams.
    - Analyzed sales conversion metrics to optimize lead distribution, routing high-potential leads to top-performing agents to maximize conversion rates.
    - Automated daily performance reporting pipelines using advanced formulas (IMPORTRANGE, QUERY), reducing manual reporting time by 80% and delivering real-time insights to management.
  ]
)

#entry(
  "Data Operation Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Performed data quality validation for 1,000+ daily operational records, ensuring 99% data integrity and consistency for downstream reporting.
    - Moderated and standardized 1,500+ job posting entries on boss.vn, resolving metadata discrepancies and improving platform search accuracy.
  ]
)

// --- Projects ---
== #section("Projects")

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
  "MoMo Transaction & Behavioral Analytics", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Analyzed over *13.4K+ transactions (694.6M GMV)* using *Python (Pandas)* and *SQL* to evaluate platform performance, identifying a *stable 51K VND AOV* and discovering strong Q3-Q4 seasonal growth drivers.
  - Developed a *user behavioral segmentation model* combining the *Pareto (80/20) principle* and statistical clustering, identifying that the *top 20% of active users contribute 65% of total revenue* to propose a VIP loyalty program.
  - Conducted *cohort and demographic analysis* using *Tableau* to optimize marketing ROI, identifying *users aged 23–32 in major cities* as the *highest-converting segment to refine user acquisition strategies*.
  - Evaluated partner performance across 5 active telcos to address concentration risks, formulating *cross-selling promotions* to stimulate mid-tier merchants (Vinaphone, Mobifone) and reduce heavy reliance on Viettel.
]
)

// --- Technical Skills ---
== #section("Technical Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Programming*], [:], [Python (Pandas, Polars, Scikit-learn), SQL, R],
  [*Databases*], [:], [PostgreSQL, MySQL, SQL Server, BigQuery],
  [*BI & Visualization*], [:], [Tableau, Looker Studio, Power BI],
  [*Data Engineering*], [:], [ETL/ELT Pipelines, dbt, Apache Spark (PySpark), Apache Airflow (Basic)],
  [*AI & Cloud Tools*], [:], [GCP, AWS (S3, EC2), Git, Docker, Harness Engineering (AI Workflow Automation)]
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

*#link("https://github.com/walkinglabs/learn-harness-engineering")[Harness Engineering for AI Agents]* | WalkingLabs 

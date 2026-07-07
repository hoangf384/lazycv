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
Driven by a commitment to continuous learning and excellence, I am deeply passionate about Data Analytics, Strategy, and Business Growth. My long-term ambition is to architect impactful, data-driven business strategies that foster sustainable success, anchored by a strong work ethic and a results-oriented mindset.




// --- Experience ---
== #section("Work Experience")

#entry(
"Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Collected, cleaned, and standardized business data from multiple sources to build a centralized dataset for market research and sales analysis.
    - Designed interactive dashboards in Google Sheets using formulas (e.g., IMPORTRANGE, QUERY, FILTER) to monitor sales performance and support business decision-making.
    - Analyzed sales and lead performance to identify high-conversion opportunities, providing data-driven recommendations for lead allocation and revenue optimization.
]
)

#entry(
  "Data Operation Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Validated 1,000+ daily operational records against legal documents with 99% accuracy.
    - Moderated 1,500+ job postings on boss.vn to ensure content quality and data consistency.
  ]
)

// #entry(
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
  [*Programming*], [:], [Python (Pandas, Polars, PySpark), SQL, R],
  [*Databases*], [:], [MySQL, SQL Server],
  [*Data Tools*], [:], [MS Excel, Jupyter Notebook],
  [*Cloud Platforms*], [:], [GCP (GCS, BigQuery), AWS (EC2, S3, IAM)],
  [*Visualization*], [:], [Tableau, Looker Studio, Power BI],
  [*Other Tools*], [:], [Git, Docker, AI Tools (Antigravity-ide; Antigravity-cli)],
  // [*Data Engineering*], [:], [Apache Spark, Apache Airflow, dbt, ETL/ELT Pipelines, Incremental Processing],
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

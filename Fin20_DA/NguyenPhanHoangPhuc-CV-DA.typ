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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Trading Analyst - Quant Research] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Summary")
Quantitative-focused MIS graduate specializing in *Business Data Science*. Passionate about applying *Probability & Statistics*, *Time-Series Analysis*, and data modeling (Python, R) to analyze price action, perform risk checks, and construct algorithmic trading models. Strong problem-solving mindset, fast learner, and eager to undergo intensive training at Fin20.




// --- Experience ---
== #section("Work Experience")

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Designed and maintained a centralized lead management system (Mini CRM) on Google Sheets to optimize operational workflow and allocate leads based on sales performance.
    - Extracted sales metrics and built automated daily/weekly reporting pipelines using advanced formulas (IMPORTRANGE, QUERY, FILTER), delivering real-time dashboards to facilitate strategic decisions.
  ]
)

#entry(
  "Data Operation Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Performed database audit and compliance validation for 1,000+ daily operational transactions, mitigating operational risks and maintaining a 99% accuracy rate.
    - Moderated and standardized 1,500+ job posting entries on boss.vn, resolving metadata anomalies to maintain database integrity.
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
  "MoMo Top Up | Transaction & Behavioral Analytics", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
  - Analyzed time-series data of over *13.4K+ transactions (694.6M GMV)* using *Python (Pandas)* and *SQL* to assess platform performance, identifying stable AOV trends and discovering seasonal demand growth drivers.
  - Applied the *Pareto (80/20) principle* to segment customer behavior, identifying that the top 20% of users contribute 65% of revenue, and proposed loyalty programs to retain core users and minimize churn.
  - Conducted *cohort and demographic analysis* to optimize marketing ROI, identifying major city users aged 23–32 as the highest-converting segment to refine target customer acquisition.
  - Evaluated partner performance across 5 telcos to address concentration risks, formulating cross-selling promotions to boost mid-tier telco transactions and diversify vendor dependencies.
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
  [*Quantitative Methods*], [:], [Probability & Statistics, Time-Series Analysis, Applied Machine Learning],
  [*Programming & Models*], [:], [Python (Pandas, Polars, SciPy, NumPy, Statsmodels), R, SQL, Pine Script (Basic)],
  [*Databases & Tools*], [:], [MySQL, BigQuery, SQL Server, Excel, Jupyter Notebook],
  [*Visualization*], [:], [Tableau, Looker Studio, Power BI],
  [*Other Tools*], [:], [Git, Docker]
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

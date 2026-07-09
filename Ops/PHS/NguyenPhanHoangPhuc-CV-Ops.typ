#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
)

#set text(
  font: "New Computer Modern",
  size: 7.5pt,
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
  #text(size: 10pt, weight: "bold", fill: gray.darken(40%))[Branch Operations Intern] \
  #v(0em)
  Thu Duc, HCMC | (84) 854 519 237 | #link("mailto:phuchoang0308@gmail.com")[phuchoang0308\@gmail.com] \
  #link("https://github.com/hoangf384")[github.com/hoangf384] |
  #link("https://www.linkedin.com/in/hoangf384/")[in/hoangf384]
]

// --- Professional Summary ---
== #section("Summary")
Detail-oriented and proactive MIS graduate with a specialization in *Business Data Science*. Seeking a *Branch Operations Intern* role at PHS to apply strong analytical and communication skills. Experienced in auditing transaction records, organizing client databases (CRM), and optimizing reporting workflows. Dedicated to maintaining high operational compliance and supporting client relations.

// --- Experience ---
== #section("Work Experience")

#entry(
  "Data Analyst | Newgen Invest", "03/2026 – Present",
  desc: [
    - Designed and standardized a lead database management system (Mini CRM) on Google Sheets to optimize workflow operations and enforce secure access policies.
    - Compiled operational performance reports, auditing raw datasets and constructing automated dashboards to support management decision-making.
    - Supported client data organization and data validation to ensure consistency.
  ]
)

#entry(
  "Operations Intern | ATG", "10/2025 – 12/2025",
  desc: [
    - Audited and cross-checked 1,000+ daily transaction and operational records against compliance and legal documents to ensure quality and compliance, achieving a 99% accuracy rate.
    - Managed documentation archives and moderated job postings on boss.vn to maintain database integrity and structure.
    - Collaborated with cross-functional teams to resolve operational bottlenecks and streamline database entry processes.
  ]
)

#entry(
  "SEO Intern | ECXO", "09/2025 – 10/2025",
  desc: [
    - Managed on-page optimization workflows for 50+ landing pages, refining metadata, headers, and breadcrumbs to improve site structure and user experience.
    - Implemented internal linking strategies, enhancing search engine crawlability and driving a 10% increase in organic impressions.
  ]
)

// --- Projects ---
== #section("Projects")

#entry(
  "MoMo Top Up | Transactional Operations Analysis", "04/2026 – 05/2026",
  sub: link("https://github.com/hoangf384/MoMo-Top-Up")[github.com/hoangf384/MoMo-Top-Up],
  desc: [
    - Analyzed over *13.4K+ transactions (694.6M GMV)* to assess platform operational performance, identifying average order value (AOV) trends and seasonal demand drivers to optimize supply-chain and partner resource planning.
    - Applied the *Pareto (80/20) principle* to segment customer behavior, identifying key segments contributing to 65% of revenue, and proposed loyalty programs to improve customer retention and lifetime value.
    - Conducted *cohort and demographic analysis* to optimize marketing ROI, identifying major city users aged 23–32 as the highest-converting segment to refine target customer acquisition.
    - Evaluated partner performance and concentration risks across 5 active telcos, formulating cross-selling campaigns to boost mid-tier telco transactions and diversify vendor dependencies.
  ]
)

#entry(
  "Personal Finance Behavioral Analytics | Group Project", "05/2025 – 07/2025",
  sub: link("https://github.com/hoangf384/pf-visualization")[github.com/hoangf384/pf-visualization],
  desc: [
    - Simulated behavioral datasets for 20,000 users using *Python (SciPy, NumPy)*, generating realistic scenarios based on U.S. BLS data to analyze consumer spending patterns and savings bottlenecks.
    - Created interactive *Tableau dashboards* for product and operations teams to analyze demographic segments, uncover operational pain points, and drive product feature optimizations.
    - Discovered that the 18–25 age cohort had a negative savings rate (-26.9%) due to early-month fixed costs, leading to a recommendation for dynamic budget pacing features.
    - Formulated an *A/B testing and implementation plan* for proactive spending notifications, designing the operational workflows for real-time user intervention.
  ]
)

// --- Technical Skills ---
== #section("Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Branch Operations*], [:], [Securities Transaction Review, Account Management, Operational Compliance & Audit],
  [*Core Skills*], [:], [Professional Communication, Problem Solving, Critical Thinking, Attention to Detail],
  [*Office Tools*], [:], [MS Excel (Pivot Tables, Advanced Formulas), Google Sheets (CRM setup), MS Word, PowerPoint],
  [*Data Tech*], [:], [SQL (MySQL, SQL Server), Python (Pandas), Data Visualization (Tableau, Looker Studio)],
  [*Other Tools*], [:], [Git, Docker, English (Basic Communication & Reading comprehension - B2 CEFR)]
)

// --- Education ---
== #section("Education & Qualifications")

#entry(
  "Management Information Systems | HUB", "10/2022 – 03/2026",
  desc: [
    - Specialization: Business Data Science | GPA: 3.2/4.0
    - Semi-finalist - Data Analytics Competition 2024 (Organized by HUB University).
  ]
)
*#link("https://www.coursera.org/account/accomplishments/specialization/RHRR7XNFS7CN")[Google Data Analytics Professional Certificate]*

*#link("https://drive.google.com/drive/folders/1JeagpuAhYDqcnOMRTjOjjw5pyBj5rDkt?usp=drive_link")[VSTEP – Level 4 (B2 CEFR)]*

*#link("https://github.com/walkinglabs/learn-harness-engineering")[Harness Engineering for AI Agents (WalkingLabs)]*

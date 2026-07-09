#set page(
  paper: "a4",
  margin: (x: 0.5in, y: 0.5in),
)

#set par(justify: true)

#set text(
  font: "New Computer Modern",
  size: 8.5pt,
  lang: "en",
)

// --- Helper Functions for ATS --- Friendly Formatting ---
#let section(title) = {
  v(0.2em)
  text(size: 10pt, weight: "bold", upper(title))
  v(0em)
  line(length: 100%, stroke: 0.5pt + black)
  v(0em)
}

#let entry(title, date, sub: "", desc: []) = {
  block(width: 100%)[
    #text(weight: "bold")[#title] #h(1fr) #date \
    #if sub != "" [#text(style: "italic")[#sub] \ ]
    #v(0.2em)
    #desc
  ]
  v(0.5em)
}

// ==========================================
// JOHN DOE'S INFORMATION 
// ==========================================

// --- Header ---
#align(center)[
  #text(size: 2em, weight: "bold")[JOHN DOE] \
  #v(0.2em)
  #text(size: 1.2em, weight: "bold", fill: gray.darken(40%))[Data Engineer] \
  #v(0.4em)
  Seattle, WA, USA | +1 (206) 555-0199 | #link("mailto:johndoe.data@email.com")[johndoe.data\@email.com] \
  #link("https://github.com/johndoe-data")[github.com/johndoe-data] | #link("https://linkedin.com/in/johndoe-data")[linkedin.com/in/johndoe-data]
]


// --- Professional Summary ---
#section("Summary")
Solutions-driven Data Engineer with a strong foundation in distributed systems, cloud computing, and modern data architectures. Experienced in building scalable ETL pipelines, optimizing data warehouses, and deploying big data solutions using AWS, Apache Spark, and Airflow. Passionate about transforming complex datasets into high-quality, actionable insights for data-driven decision making.

// --- Skills ---
#section("Technical Skills")
#grid(
  columns: (auto, auto, 1fr),
  column-gutter: 0.5em,
  row-gutter: 0.7em,
  [*Programming*], [:], [Python, Scala, SQL, Bash],
  [*Big Data Technologies*], [:], [Apache Spark (PySpark), Apache Airflow, Kafka, Hadoop Ecosystem],
  [*Database & Data Warehousing*], [:], [Snowflake, PostgreSQL, MySQL, Apache Cassandra, Amazon Redshift],
  [*Cloud & Infrastructure*], [:], [AWS (EC2, S3, EMR, IAM), Docker, Kubernetes, Terraform, Git]
)


// --- Experience ---
#section("Work Experience")

#entry(
  "Data Engineering Intern", "05/2025 – 08/2025",
  sub: "Nimbus Analytics, Seattle, WA",
  desc: [
    - Engineered robust ETL pipelines utilizing PySpark and AWS EMR to process over 500GB of daily telemetry data, reducing processing latency by 25%.
    - Migrated on-premise relational databases to Snowflake, designing optimized dimensional models that improved query performance for the BI team by 40%.
    - Orchestrated automated data workflows and scheduled dependency tracking using Apache Airflow on Docker.
  ]
)

// --- Projects ---
#section("Technical Projects")

#entry(
  "Distributed Data Infrastructure on AWS", "01/2026 - Present",
   sub: link("https://github.com/johndoe-data/distributed-aws-pipeline")[github.com/johndoe-data/distributed-aws-pipeline],
  desc: [
    - Architected a highly available, multi-node data processing environment across distributed AWS EC2 instances, secured via Tailscale VPN.
    - Implemented a resilient storage layer combining MySQL and a 3-node Apache Cassandra cluster, ensuring fault tolerance and high read/write throughput.
    - Deployed a Spark compute cluster (Master/Worker architecture) and an Airflow orchestration layer for end-to-end pipeline automation.
  ]
)

#entry(
  "Real-time E-Commerce Analytics Engine", "09/2025 - 12/2025",
   sub: link("https://github.com/johndoe-data/ecommerce-streaming-analytics")[github.com/johndoe-data/ecommerce-streaming-analytics],
  desc: [
    - Built a streaming data pipeline to ingest and process high-velocity user event logs from a simulated e-commerce platform using Apache Kafka.
    - Developed PySpark Structured Streaming applications to calculate real-time behavioral metrics, outputting aggregated data to PostgreSQL.
    - Integrated a generative AI model via API to automatically categorize and enrich unstructured product search queries with 92% accuracy.
  ]
)

// --- Education ---
#section("Education & Qualifications")

#entry(
  "Bachelor of Science in Computer Science", "09/2022 – 05/2026",
  sub: "University of Washington (UW), Seattle, WA",
  desc: [
    - Focus Areas: Database Systems, Distributed Computing, Machine Learning.
    - GPA: 3.8/4.0 | Honors: Dean's List (2024, 2025).
  ]
)

- *AWS Certified Data Engineer – Associate* (2025)
- *Snowflake SnowPro Core Certification* (2026)
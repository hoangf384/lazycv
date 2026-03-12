#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
  lang: "en",
)

// --- Helper Functions for ATS --- Friendly Formatting ---
#let section(title) = {
  v(1em)
  text(size: 1.1em, weight: "bold", upper(title))
  v(0.2em)
  line(length: 100%, stroke: 0.5pt + black)
  v(0.4em)
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
// THAY ĐỔI THÔNG TIN CÁ NHÂN CỦA BẠN Ở DƯỚI ĐÂY
// ==========================================

// --- Header ---
#align(center)[
  #text(size: 2em, weight: "bold")[[YOUR FULL NAME]] \
  #v(0.2em)
  #text(size: 1.2em, weight: "bold", fill: gray.darken(40%))[[Target Job Title]] \
  #v(0.4em)
  [City, Country] | [Phone Number] | #link("mailto:your.email@example.com")[[your.email\@example.com]] \
  #link("https://github.com/yourusername")[[github.com/yourusername]] | #link("https://linkedin.com/in/yourusername")[[linkedin.com/in/yourusername]]
]


// --- Professional Summary ---
#section("Professional Summary")
[Write a concise, 3-4 sentence summary highlighting your core expertise, years of experience, key technical skills, and what value you bring to the potential employer. Make sure to include ATS-friendly keywords relevant to your target role.]

// --- Skills ---
#section("Technical Skills")
- *[Category 1 (e.g., Programming)]*: [Skill 1], [Skill 2], [Skill 3].
- *[Category 2 (e.g., Frameworks)]*: [Skill 1], [Skill 2], [Skill 3].
- *[Category 3 (e.g., Cloud)]*: [Skill 1], [Skill 2], [Skill 3].
- *[Category 4 (e.g., Tools)]*: [Skill 1], [Skill 2], [Skill 3].

// --- Experience ---
#section("Work Experience")

#entry(
  "[Job Title]", "[MM/YYYY] – [MM/YYYY or Present]",
  sub: "[Company Name]",
  desc: [
    - [Action verb] [what you did] by [how you did it] resulting in [quantifiable metric/impact, e.g., 20% increase in efficiency].
    - [Action verb] [what you did] to [purpose] using [specific tools/technologies].
  ]
)

#entry(
  "[Job Title]", "[MM/YYYY] – [MM/YYYY]",
  sub: "[Company Name]",
  desc: [
    - [Action verb] [what you did] by [how you did it] resulting in [quantifiable metric/impact].
    - [Action verb] [what you did] to [purpose] using [specific tools/technologies].
  ]
)

// --- Projects ---
#section("Technical Projects")

#entry(
  "[Project Name 1]", "[MM/YYYY] - [MM/YYYY]",
   sub: link("https://github.com/yourusername/project")[[Project Link / Repository]],
  desc: [
    - [Action verb] [what the project is] using [technologies used] to solve [problem].
    - [Action verb] [technical implementation details, e.g., built an ETL pipeline processing X amount of data].
    - [Quantifiable result, e.g., reduced processing time by X%, achieved X% accuracy].
  ]
)

#entry(
  "[Project Name 2]", "[MM/YYYY] - [MM/YYYY]",
   sub: link("https://github.com/yourusername/project")[[Project Link / Repository]],
  desc: [
    - [Action verb] [what the project is] using [technologies used] to solve [problem].
    - [Action verb] [technical implementation details].
  ]
)

// --- Education ---
#section("Education & Qualifications")

#entry(
  "[Degree Name, e.g., Bachelor in Information Systems]", "[MM/YYYY] – [MM/YYYY]",
  sub: "[University Name]",
  desc: [
    - Specialization: [Your Major] | GPA: [Your GPA].
    - [Honors, Awards, or relevant extracurricular activities].
  ]
)

- *[Name of Certification 1]* - *[Name of Certification 2]* ```

### Cách sử dụng Template này:
1. Bạn chỉ cần copy toàn bộ đoạn mã này lưu thành một file tên là `template_cv_ats.typ`.
2. Khi cần dùng, bạn (hoặc bạn bè) tạo một file mới, copy nội dung này sang và chỉ việc tìm các cụm từ nằm trong ngoặc vuông `[...]` để thay thế bằng thông tin thật.

Bạn có muốn mình tạo thêm một số biến (variables) ở ngay đầu file code để sau này bạn chỉ cần gõ tên, email, link Github ở phần đầu là nó tự động điền xuống dưới không?

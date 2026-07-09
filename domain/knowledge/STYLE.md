# Typst Styling Guidelines (knowledge/STYLE.md)

This document outlines the standard styling and layout practices to maintain a professional visual design for the candidate's CV.

## 1. Typography & Sizes
* **Name Header:** 16pt, bold, centered.
* **Job Title Subheader:** 10pt, bold, gray color (gray.darken(40%)), centered.
* **Contact Details:** 8pt, centered, separated by vertical bars `|`.
* **Section Headings:** 10pt, bold, uppercase, followed by a thin horizontal line (using the `#section` helper function).
* **Body Text:** 8pt to 8.5pt, justified (`#set par(justify: true)`), using the `New Computer Modern` font (for English) or `DejaVu Serif` (for Vietnamese).

## 2. Layout & Helper Functions
* **Helper Functions:** Always utilize helper functions defined in `PERSONAL_TEMPLATE.typ` to keep code modular and readable:
  * `#section(title)` - Renders a standard section header with an underline.
  * `#entry(title, date, sub: "", desc: [])` - Renders a standard experience or project block.
* **Grid Layouts:** Use `#grid` exclusively for the Technical Skills section. Ensure correct comma separation between columns:
  ```typst
  #grid(
    columns: (auto, auto, 1fr),
    column-gutter: 0.5em,
    row-gutter: 0.7em,
    [*Category*], [:], [Item 1, Item 2, Item 3],
  )
  ```

## 3. Page Budget
* **Orphan Lines:** Avoid orphan headings or entries spanning across page breaks.
* **Page Budget Constraint:** The tailored CV must fit exactly within a 1-page or 2-page budget (as specified in the target role). Use concise bullet points to avoid page overflow.

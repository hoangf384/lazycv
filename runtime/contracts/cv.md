# CV Customization Contract (runtime/contracts/cv.md)

This contract defines the input, output, and edit boundaries for the CV Writer role.

## 1. Interface
* **Inputs:**
  * Refined Job Description: `applications/{track}/{company_name}/{company_name}_JD.md`
  * Candidate Master Profile: `domain/knowledge/PERSONAL_PROFILE.md`
  * Master CV Template: `domain/templates/PERSONAL_TEMPLATE.typ`
* **Outputs:**
  * Tailored CV: `applications/{track}/{company_name}/NguyenPhanHoangPhuc-CV-{Track}.typ`

## 2. Mutability Boundaries
* **Editable Fields:**
  * `Summary` (Objectives): Can be rewritten to align with the core focus and keywords of the JD.
  * `Technical Skills` grid: Can be reordered or adjusted to prioritize skills matching the JD.
  * `Project Keywords`: You may emphasize specific technologies or libraries used in standard projects (e.g., adding specific Python libraries), provided they are grounded in truth.
* **Forbidden Fields (Strictly Immutable):**
  * Core Experience Dates: All start/end dates for past roles (Newgen Invest, ATG, ECXO) must remain unchanged.
  * Past Company Names: Original company names must be preserved.
  * Candidate Contact Details: Phone number, email, links, and name must not be altered.
  * Education History: HUB graduation timeline and GPA must remain unchanged.

# Cover Letter Customization Contract (runtime/contracts/cover_letter.md)

This contract defines the input, output, and quality boundaries for the Cover Letter Writer role.

## 1. Interface
* **Inputs:**
  * Refined Job Description: `applications/{track}/{company_name}/{company_name}_JD.md`
  * Tailored CV: `applications/{track}/{company_name}/NguyenPhanHoangPhuc-CV-{Track}.typ`
* **Outputs:**
  * Application Letter: `applications/{track}/{company_name}/cover_letter.md` (or `email_application.md`)

## 2. Quality Constraints
* **Length:** Must be between 200 and 300 words.
* **Content:**
  * Must mention specific alignment points between candidate's real projects (e.g. MoMo Top Up, Personal Finance Behavioral Analytics) and the JD.
  * Must state the correct target company name and position.
  * Must NOT contain generic templates or empty placeholders.
* **Tone & Language:** Professional, enthusiastic, and matching the language of the tailored CV.

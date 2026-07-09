# Playbook: Create Cover Letter (runtime/playbooks/create_cover_letter.md)

This playbook outlines the step-by-step procedure for drafting a personalized cover letter or application email.

## 1. Inputs & Outputs
* **Inputs:**
  * Job Description: `applications/{track}/{company_name}/{company_name}_JD.md`
  * Tailored CV: `applications/{track}/{company_name}/NguyenPhanHoangPhuc-CV-{Track}.typ`
* **Outputs:**
  * Application Letter: `applications/{track}/{company_name}/cover_letter.md` (or `email_application.md`)

## 2. Step-by-Step Procedure

### Step 1: Context Loading
1. Read the refined Job Description to locate the company name, target role, and key pain points.
2. Read the tailored CV to identify which specific projects and achievements were highlighted for this application.

### Step 2: Drafting the Content
1. Address the hiring team of the target company.
2. Clearly state the applicant's name and the target position.
3. Connect 2-3 of the candidate's core projects (e.g., MoMo Top Up or Personal Finance Analytics) directly to the responsibilities mentioned in the JD.
4. Conclude with a strong call to action expressing eagerness to learn and contribute under their mentorship.
5. Limit the letter to 200-300 words and write it in the language matching the CV.

### Step 3: Output and Review
1. Save the file as `cover_letter.md` (or `email_application.md`) in the company subdirectory.
2. Review the letter to ensure it does not contain placeholders or generic templates.

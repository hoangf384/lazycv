# Playbook: Tailor CV (runtime/playbooks/tailor_cv.md)

This playbook outlines the step-by-step procedure for tailoring a CV for a target job application.

## 1. Inputs & Outputs
* **Inputs:**
  * Job Description: `applications/{track}/{company_name}/{company_name}_JD.md`
  * Candidate Profile: `domain/knowledge/PERSONAL_PROFILE.md`
  * Master CV Template: `domain/templates/PERSONAL_TEMPLATE.typ`
* **Outputs:**
  * Customized Typst CV: `applications/{track}/{company_name}/NguyenPhanHoangPhuc-CV-{Track}.typ`

## 2. Step-by-Step Procedure

### Step 1: Initialize Directory
1. Confirm the target track folder exists inside `applications/` (e.g., `applications/DA/`, `applications/DE/`, `applications/Ops/`).
2. Create the company subdirectory: `applications/{track}/{company_name}/`.
3. Save the refined JD as `{company_name}_JD.md` inside this directory.

### Step 2: Copy Master Template
1. Copy `domain/templates/PERSONAL_TEMPLATE.typ` into `applications/{track}/{company_name}/`.
2. Rename the file to `NguyenPhanHoangPhuc-CV-{Track}.typ` (or matches local language version e.g. adding `-VI` suffix).

### Step 3: Analyze and Refine
1. Read the extracted Job Description to identify core responsibilities and technical keywords (e.g., Python Pandas, SQL, Tableau).
2. Align the `Summary` (Mục tiêu nghề nghiệp) to reflect how the candidate's goals match the role's responsibilities.
3. Edit the `Technical Skills` grid using Typst styling rules to prioritize the tools and technologies required by the JD.
4. If applicable, refine existing experience bullet points to highlight relevant keywords (e.g., highlighting data cleaning or dashboarding actions) without altering the dates, company names, or core achievements.

### Step 4: Run Verification
1. Run the Quality Gate script:
   ```bash
   python3 tools/verify_cv.py <path_to_custom_cv.typ>
   ```
2. If validation fails, correct the errors in the Typst file and repeat.

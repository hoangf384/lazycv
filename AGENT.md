# Agent Guidelines (AGENT.md)

This document provides operational guidelines for AI Agents working in the `lazycv` repository.

## 1. Project Overview
This repository contains English and Vietnamese CV templates written in **Typst** (`.typ`), categorized into major tracks: **Data Analyst (DA)**, **Data Engineer (DE)**, **Business Analyst (BA)**, **Finance**, **Business Intelligence (BI)**, and **Operations (Ops)**. The goal is to customize (tailor) the CV for each specific employer/job description (JD) to optimize application success rates.

## 2. Repository Layout
* `DA/` - Base CV files for Data Analyst (English & Vietnamese).
* `DE/` - Base CV files for Data Engineer (English).
* `Ops/` - Base CV files for Operations/Administration (English & Vietnamese).
* `.agent/roles/` - Declarative system prompts for specialized subagents (`cv_writer.md`, `cover_letter_writer.md`).
* `PERSONAL_PROFILE.md` - Candidate's unified master profile containing all standardized personal details and experience logs.
* `PERSONAL_TEMPLATE.typ` - Candidate's master CV layout template.
* Hierarchical track subdirectories `{track}/{company_name}/` - Dedicated directories for custom CV versions (e.g., `DA/RiseCapital/`, `DE/HQS/`, `Finance/JnJ/`, `Ops/PHS/`).

## 3. Agent Rules of Operation (Strict Rules)
### Workflow for creating a tailored CV for a new position:

When receiving a new JD or a request to customize a CV, the Agent MUST follow this workflow:

0. **Extract and refine JD:** Read the job description, extract key requirements (must-have skills, nice-to-have skills, core responsibilities), and save them as a Markdown file named `{company_name}_JD.md` (e.g., `HQSOFT_JD.md`).
1. **Create target directory:** Create a subdirectory matching the track and company name: `{track}/{company_name}/` (e.g., `DA/Fin20/`, `DE/HQS/`) and move `{company_name}_JD.md` into it.
2. **Copy base template:** Copy the master template `PERSONAL_TEMPLATE.typ` (or the base CV from `DA/`, `DE/`, or `Ops/` if targeting a specific track) into the newly created subdirectory and rename the file appropriately (e.g., `NguyenPhanHoangPhuc-CV-DE.typ`).
3. **Tailor CV content:** Adjust and optimize the `.typ` source file based on the extracted JD (specifically target the `Summary` and `Technical Skills` sections to align with ATS keywords).
4. **Draft Cover Letter:** Draft a customized cover letter or application email body matching the language and tone of the application, and save it in the same directory.

### Technical Constraints:
* **DO NOT MODIFY:** Never modify the unified profile (`PERSONAL_PROFILE.md` or the master template `PERSONAL_TEMPLATE.typ`). Never alter the core job descriptions or experience dates (the `experience` section in the `.typ` file). You are only allowed to optimize the `Summary`, `Technical Skills`, and minor keyword adjustments to match the JD.
* **DO NOT COMPILE:** Compilation (running `typst compile`) is strictly prohibited unless explicitly requested by the user. Only modify the `.typ` source files.
* **Information Alignment:** Always cross-reference changes with `PERSONAL_PROFILE.md` to ensure core dates, contact info, and previous company names remain 100% consistent across all CVs.
* **Automated Verification (Quality Gate):** After tailoring the CV, you MUST run the validation script:
  ```bash
  python3 scripts/verify_cv.py <path_to_custom_cv.typ>
  ```
  The CV MUST pass this script validation (exit code 0) before the task is marked as complete.
* **Declarative Prompts:** The system prompts for the subagents MUST be loaded dynamically from the files `.agent/roles/cv_writer.md` and `.agent/roles/cover_letter_writer.md` respectively, ensuring their behaviors are fully configurable on-disk.
* **Progress Tracking:** Check `PROGRESS.md` before starting. Update `PROGRESS.md` using the structure in `PROGRESS_TEMPLATE.md` at the end of each session to ensure a clean handoff.


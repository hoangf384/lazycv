# Verification & Failure Policies (runtime/policies/verification.md)

This document defines the automated verification procedures and failure resolution policies for the CV tailoring process.

## 1. Quality Gate Verification
Every tailored CV MUST pass the verification script to check profile invariants (no modifications to experience dates, phone, email, or core project dates):
```bash
python3 tools/verify_cv.py <path_to_custom_cv.typ>
```
* **Success Criteria:** The command must exit with code 0. If it fails (non-zero exit code), the agent must process the printed errors and fix the CV source code until validation succeeds.

## 2. Failure Policies & Escalation

### Case A: Verification Script Failure
* **Action:** Inspect the stdout/stderr of the verification script. Identify which invariant was violated (e.g., modified date or missing email). Correct the code in the target `.typ` file and re-run the verification. Never bypass this script.

### Case B: Insufficient JD Information
* **Scenario:** The provided Job Description (JD) is too short, ambiguous, or lacks key requirements.
* **Action:**
  1. Do not make assumptions or default to a generic template.
  2. Search for the company or job details using web search tools if available.
  3. If still unresolved, PAUSE the execution and ask the user to clarify or provide the full JD text.

### Case C: Missing Skills or Profile Mismatch
* **Scenario:** The JD requires critical skills (e.g., Java, Kubernetes) that are not present in [PERSONAL_PROFILE.md](file:///home/hp/projects/lazycv/domain/knowledge/PERSONAL_PROFILE.md).
* **Action:**
  1. NEVER fabricate or add false skills to the CV.
  2. Rearrange the Technical Skills grid to focus on the candidate's existing strengths that are most related.
  3. If the skill gap is too wide (e.g., a completely different track), highlight this mismatch to the user and pause for guidance.

## 3. Human Approval Process
* **Awaiting Approval State:** Once both the tailored CV and cover letter have successfully passed the automated Verification Layer, the Supervisor enters the `Awaiting approval` state.
* **User Review:** The Supervisor presents the generated output files directly to the user.
* **Handoff:** The task cannot transition to `Completed` until the user reviews and explicitly approves the changes (either by approving the pull request/changes or confirming in the prompt).

# Review & Validation Contract (contracts/review.md)

This contract defines the input, output, and audit boundaries for the Reviewer role.

## 1. Interface
* **Inputs:**
  * Refined Job Description: `{track}/{company_name}/{company_name}_JD.md`
  * Tailored CV: `{track}/{company_name}/NguyenPhanHoangPhuc-CV-{Track}.typ`
  * Application Letter: `{track}/{company_name}/cover_letter.md`
* **Outputs:**
  * Audit Report: Approval status (Approved/Rejected) and list of violations (if any).

## 2. Audit Specifications
* **Quality Gate:** Execution of the verification script is mandatory. Any date mismatch or profile corruption must trigger an immediate rejection.
* **Layout & Style Audit:** Verify that formatting matches `knowledge/STYLE.md` (no orphan lines, correct font usage, page budgets).
* **Cover Letter Check:** Verify that the letter has no placeholders and fits the word count contract.
* **State Update:** Approve the transaction only when all checks pass.

# Repository Harness Specification (AGENTS.md)

This document defines the agent native harness architecture for the `lazycv` repository. The environment is organized into six distinct layers to ensure robust, sandboxed, and verified agent execution.

## Core Principles
* **Preserve Truth:** Never alter the candidate's core dates, contact details, or experience history.
* **Prefer Minimal Edits:** Do not perform unnecessary edits. Target only ATS alignment.
* **Never Fabricate:** Never invent skills, achievements, or projects that are not present in the candidate's profile.
* **Always Verify:** Every customized file must be programmatically verified before declaring completion.

---

## 1. Instruction Layer (Routing & Roles)

### Execution Model (Orchestration)
The execution model utilizes a Supervisor to orchestrate the tailoring workflow:
```
Supervisor (Coordinator/Model)
      │
      ├──► Playbook: tailor_cv (using cv_writer role)
      │
      ├──► Playbook: create_cover_letter (using cover_letter_writer role)
      │
      └──► Verification: verify_cv (using reviewer role)
```

### Specialized Roles
* **Agent Roles (`runtime/roles/`):**
  * `runtime/roles/cv_writer.md` - Customized CV tailoring role.
  * `runtime/roles/cover_letter_writer.md` - Personalized cover letter drafting role.
  * `runtime/roles/reviewer.md` - Quality verification and audit role.

### Task Routing & Playbooks
* All step-by-step procedures (workflows) are defined in [playbooks/](file:///home/hp/projects/lazycv/runtime/playbooks/).
* The Supervisor dynamically routes tasks to the appropriate role and playbook depending on the user's objective (e.g., CV optimization, Cover Letter drafting, or verification).

---

## 2. Capability Layer (Portable Tools)
The environment exposes capabilities to the agents in a portable format:
* **Filesystem Capability:**
  * May read: `domain/knowledge/`, `runtime/roles/`, `runtime/playbooks/`, `runtime/policies/`, `runtime/contracts/`, and the target applications directory.
  * May write/modify: Only within the target `applications/{track}/{company_name}/` directory.
  * Avoid: `.git/`, `.cache/`, `.gemini/`, `node_modules/`.
* **Verification Capability:**
  * Execute python-based validation scripts.
* **Version Control Capability:**
  * Inspect git status and stage modified files.

---

## 3. Knowledge Layer (Sources of Truth)
All reference metadata is loaded from the `domain/` directory:
* **Mutability Classes:**
  * **Immutable (Read-Only SOT):**
    * `domain/knowledge/PERSONAL_PROFILE.md` - Consolidated master profile of the candidate.
    * `domain/knowledge/ATS.md` - Core parsing guidelines for ATS compatibility.
    * `domain/knowledge/STYLE.md` - Typst typesetting, margins, and page budget guidelines.
  * **Mutable (Read-Write/Generated):**
    * Target subdirectories `applications/{track}/{company_name}/` (tailored output CVs, refined JDs, cover letters).
    * `runtime/state/PROGRESS.md` (session logs).
    * `runtime/state/run_task.md` (transient session state).

---

## 4. State Layer (Session Continuity)
* **Long-Term State (`runtime/state/PROGRESS.md`):** Records completed tasks, session outcomes, and next prioritized goals.
* **Transient State (`runtime/state/run_task.md`):** Logs ongoing tasks, subagent states, and errors during an active session.
* **Harness State Machine:**
  The Supervisor transitions the workspace through the following state machine:
  `Idle -> Planning -> Executing -> Verifying -> Awaiting approval -> Completed / Failed`
* **Recovery Policy:** If `runtime/state/run_task.md` exists at startup, the Supervisor MUST parse it to resume from the last recorded state instead of restarting.
* **Clean State Protocol:** On successful completion, temporary state files like `runtime/state/run_task.md` must be deleted, and all modified/created files must be staged in Git.

---

## 5. Verification Layer (Quality Gate & DoD)

### Completed Quality Gate
* Every tailored CV must pass the programmatic validation specified in [verification.md](file:///home/hp/projects/lazycv/runtime/policies/verification.md).
* The verification checks phone, email, education history, and experience dates against `domain/knowledge/PERSONAL_PROFILE.md`. It must exit with code 0.
* **Human Sign-off:** The task must enter the `Awaiting approval` state and be manually approved by the user before transitioning to `Completed`.

### Failure Policies
Refer to [verification.md](file:///home/hp/projects/lazycv/runtime/policies/verification.md) for full failure handling:
* If verification fails: Correct the target Typst file and retry.
* If the JD has insufficient details: Pause and request clarification from the user.
* If a critical skill is missing: Highlight the mismatch to the user and pause.

### Definition of Done (DoD)
A task is declared complete only when the following checklist is fully checked:
* [ ] Target directory `applications/{track}/{company_name}/` created.
* [ ] JD extracted and saved as `{company_name}_JD.md`.
* [ ] CV file `NguyenPhanHoangPhuc-CV-{Track}.typ` generated.
* [ ] Cover letter `cover_letter.md` drafted.
* [ ] Programmatic verification passed successfully.
* [ ] User approval received (`Awaiting approval` resolved).
* [ ] Long-term log `runtime/state/PROGRESS.md` updated.
* [ ] Git workspace clean (transient/temp files deleted, output staged).

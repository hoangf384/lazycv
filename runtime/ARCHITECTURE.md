# Harness Interaction Architecture (ARCHITECTURE.md)

This document maps the interaction dynamics, data flows, and state transitions of the agent harness in the `lazycv` repository.

---

## 1. Execution Sequence

The sequence diagram below illustrates how the Supervisor orchestrates the workflow, loads contracts, delegates tasks to roles, runs programmatic verification, and requests user approval.

```mermaid
sequenceDiagram
    actor User
    participant Supervisor
    participant CVWriter as CV Writer (Role)
    participant CLWriter as Cover Letter Writer (Role)
    participant Reviewer as Reviewer (Role)
    participant VerifierScript as verify_cv.py (Script)

    User->>Supervisor: Submit JD & Target Track
    Note over Supervisor: Load SOT from domain/knowledge/
    Supervisor->>Supervisor: Create Workspace & Refine JD
    Supervisor->>CVWriter: Tailor CV (Playbook: tailor_cv)
    Note over CVWriter: Edit Summary & Skills<br/>constrained by runtime/contracts/cv.md
    CVWriter-->>Supervisor: Tailored CV typ file generated
    Supervisor->>Reviewer: Verify Outputs (Playbook: review_cv)
    Reviewer->>VerifierScript: Execute static audit
    VerifierScript-->>Reviewer: Exit Code 0 (Success)
    Reviewer-->>Supervisor: Verification Approved
    Supervisor->>CLWriter: Draft Cover Letter (Playbook: create_cover_letter)
    Note over CLWriter: Draft letter<br/>constrained by runtime/contracts/cover_letter.md
    CLWriter-->>Supervisor: cover_letter.md generated
    Supervisor->>User: Request Sign-off (State: Awaiting Approval)
    User-->>Supervisor: Approved
    Note over Supervisor: Update runtime/state/PROGRESS.md & Clean Workspace
    Supervisor-->>User: Task Completed
```

---

## 2. Data Flow Map

The diagram below details the data dependencies between input sources, processing roles, and intermediate output artifacts.

```mermaid
graph TD
    JD[Target JD.md] -->|Input| CVWriter[CV Writer]
    Profile[domain/knowledge/PERSONAL_PROFILE.md] -->|Immutable Input| CVWriter
    Template[domain/templates/PERSONAL_TEMPLATE.typ] -->|Base Template| CVWriter
    CVWriter -->|Output| TailoredCV[Tailored CV.typ]
    
    TailoredCV -->|Input| CLWriter[Cover Letter Writer]
    JD -->|Input| CLWriter
    CLWriter -->|Output| CoverLetter[cover_letter.md]
    
    TailoredCV -->|Verify| Reviewer[Reviewer]
    CoverLetter -->|Verify| Reviewer
    Profile -->|Verify SOT| Reviewer
    Reviewer -->|Audit Report| UserApproval{User Approval}
```

---

## 3. Harness State Machine

The Supervisor transitions the workspace through the following state machine. If an execution is interrupted, the recovery policy restores the last recorded state.

```mermaid
stateDiagram-v2
    [*] --> Idle
    Idle --> Planning: Receive task
    Planning --> Executing: Create Workspace & Load SOT
    Executing --> Verifying: CV & Cover Letter generated
    Verifying --> Executing: Validation Failed (Retry Loop)
    Verifying --> AwaitingApproval: Quality Gate Passed (Exit 0)
    AwaitingApproval --> Completed: User Approved (Stage & Clean)
    AwaitingApproval --> Failed: User Rejected / Timeout
    Failed --> [*]
    Completed --> [*]
```

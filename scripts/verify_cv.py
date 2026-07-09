#!/usr/bin/env python3
import sys
import os
import re

def verify_cv(cv_path, profile_path):
    print(f"Verifying CV: {cv_path}")
    print(f"Using Profile: {profile_path}")

    if not os.path.exists(cv_path):
        print(f"Error: CV file not found at {cv_path}")
        return False
        
    if not os.path.exists(profile_path):
        print(f"Error: Profile file not found at {profile_path}")
        return False

    with open(cv_path, 'r', encoding='utf-8') as f:
        cv_content = f.read()

    errors = []

    # 1. Contact Information Checks
    if "phuchoang0308@gmail.com" not in cv_content.lower():
        errors.append("Contact check failed: Candidate email 'phuchoang0308@gmail.com' not found or modified.")
    
    # Normalize spaces to check phone number
    normalized_content = cv_content.replace(" ", "").replace("(", "").replace(")", "").replace("-", "")
    if "854519237" not in normalized_content:
        errors.append("Contact check failed: Candidate phone '854 519 237' not found or modified.")
        
    if "hoangf384" not in cv_content.lower():
        errors.append("Contact check failed: Candidate GitHub/LinkedIn handle 'hoangf384' not found or modified.")

    # 2. Track/Language Detection
    is_vietnamese = "lang: \"vi\"" in cv_content or "mục tiêu nghề nghiệp" in cv_content.lower()

    # 3. Core Experience & Education Verification
    # Education: 10/2022 – 03/2026 (using en-dash \u2013, em-dash \u2014, or hyphen)
    education_pattern = r"10/2022\s*[\-\u2010-\u2015]\s*03/2026"
    if not re.search(education_pattern, cv_content):
        errors.append("Education check failed: HUB education period '10/2022 - 03/2026' not found or modified.")

    # Newgen Invest: 03/2026 – Present (or Hiện tại)
    if is_vietnamese:
        newgen_pattern = r"03/2026\s*[\-\u2010-\u2015]\s*(Hiện tại|hiện tại|Present|present)"
        newgen_desc = "Newgen Invest experience dates '03/2026 - Hiện tại'"
    else:
        newgen_pattern = r"03/2026\s*[\-\u2010-\u2015]\s*(Present|present)"
        newgen_desc = "Newgen Invest experience dates '03/2026 - Present'"
        
    if not re.search(newgen_pattern, cv_content):
        errors.append(f"Work experience check failed: {newgen_desc} not found or modified.")

    # ATG: 10/2025 – 12/2025 (ATG may be commented out in some CVs, so we check if it is either absent or matches correctly if present)
    atg_mention = "atg" in cv_content.lower()
    if atg_mention:
        atg_pattern = r"10/2025\s*[\-\u2010-\u2015]\s*12/2025"
        # Check if the date is matching, but allow it to be commented out (which is fine, as long as if it exists, it has correct dates)
        # Note: comments in Typst are // or /* ... */. We search for the pattern.
        if not re.search(atg_pattern, cv_content):
            errors.append("Work experience check failed: ATG experience dates '10/2025 - 12/2025' not found or modified.")

    # ECXO: 09/2025 – 10/2025 (If mentioned)
    ecxo_mention = "ecxo" in cv_content.lower()
    if ecxo_mention:
        ecxo_pattern = r"09/2025\s*[\-\u2010-\u2015]\s*10/2025"
        if not re.search(ecxo_pattern, cv_content):
            errors.append("Work experience check failed: ECXO experience dates '09/2025 - 10/2025' not found or modified.")

    # 4. Invariant Protection: Checks if CV attempts to alter key project names or details
    # For example, "MoMo Top Up" and "Personal Finance" projects should not have modified dates
    momo_pattern = r"04/2026\s*[\-\u2010-\u2015]\s*05/2026"
    if "momo" in cv_content.lower() and not re.search(momo_pattern, cv_content):
        errors.append("Project check failed: MoMo Top Up project dates '04/2026 - 05/2026' not found or modified.")

    finance_project_pattern = r"05/2025\s*[\-\u2010-\u2015]\s*07/2025"
    if "finance" in cv_content.lower() and "personal" in cv_content.lower() and not re.search(finance_project_pattern, cv_content):
        errors.append("Project check failed: Personal Finance project dates '05/2025 - 07/2025' not found or modified.")

    # Print validation report
    if errors:
        print("\n=== Validation Failed! ===")
        for error in errors:
            print(f"- {error}")
        return False
    else:
        print("\n=== Validation Succeeded! ===")
        print("All core contact details, education history, and experience invariants are preserved.")
        return True

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python verify_cv.py <path_to_cv_file> [path_to_profile]")
        sys.exit(1)
        
    cv_file = sys.argv[1]
    profile_file = sys.argv[2] if len(sys.argv) > 2 else "PERSONAL_PROFILE.md"
    
    success = verify_cv(cv_file, profile_file)
    sys.exit(0 if success else 1)

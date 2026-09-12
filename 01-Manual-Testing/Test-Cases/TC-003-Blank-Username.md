# TC-003 — Login with Blank Username

## Test Case Information

| Field | Details |
|---|---|
| Test Case ID | TC-003 |
| Requirement ID | REQ-001 |
| Feature | User Login |
| Test Type | Functional / Negative / Validation |
| Priority | High |
| Status | PASS |

## Preconditions

- The SauceDemo application is available and accessible.
- A valid SauceDemo test user account exists.
- The user is on the SauceDemo Login page.

## Test Data

| Field | Test Data |
|---|---|
| Username | Blank |
| Password | secret_sauce |

## Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Leave the Username field blank. | The Username field remains blank. |
| 2 | Enter `secret_sauce` in the Password field. | The password is accepted and displayed as masked characters. |
| 3 | Click the Login button. | Login is unsuccessful, the user remains on the Login page, and a validation message is displayed indicating that the Username field is required. |

## Execution Results

| Field | Result |
|---|---|
| Actual Result | Login was unsuccessful, the user remained on the Login page, and the validation message "Epic sadface: Username is required" was displayed. |
| Status | PASS |
| Evidence | Screenshot captured showing the blank Username field and the "Epic sadface: Username is required" validation message. |
| Defect ID | N/A |

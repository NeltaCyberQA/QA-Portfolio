# TC-002 — Login with Invalid Password

## Test Case Information

| Field | Details |
|---|---|
| Test Case ID | TC-002 |
| Requirement ID | REQ-001 |
| Feature | User Login |
| Test Type | Functional / Negative |
| Priority | High |
| Status | Not Executed |

## Preconditions

- The SauceDemo application is available and accessible.
- A valid SauceDemo test user account exists.
- The user is on the SauceDemo Login page.

- ## Test Data

| Field | Test Data |
|---|---|
| Username | standard_user |
| Password | wrong_password |

## Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Enter `standard_user` in the Username field. | The username is accepted and displayed in the Username field. |
| 2 | Enter `wrong_password` in the Password field. | The password is accepted and displayed as masked characters. |
| 3 | Click the Login button. | Login is unsuccessful, the user remains on the Login page, and an appropriate invalid-credentials error message is displayed. |

## Execution Results

| Field | Result |
|---|---|
| Actual Result | Not Executed |
| Status | Not Executed |
| Evidence | Not Available |
| Defect ID | N/A |

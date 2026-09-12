# TC-001 — Successful Login with Valid Credentials

## Test Case Information

| Field | Details |
|---|---|
| Test Case ID | TC-001 |
| Requirement ID | REQ-001 |
| Feature | User Login |
| Test Type | Functional / Positive |
| Priority | High |
| Status | PASS |

## Preconditions

- The QA/Staging environment is available and accessible.
- A registered QA customer account exists.
- Valid login credentials are available for the registered QA customer.

- ## Test Data

| Field | Test Data |
|---|---|
| Email | standard_user |
| Password | secret_sauce |

## Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Navigate to the Login page in the QA/Staging environment. | The Login page is displayed successfully. |
| 2 | Enter `standard_user` in the Email field. | The email address is accepted and displayed in the Email field. |
| 3 | Enter `secret_sauce` in the Password field. | The password is accepted and displayed as masked characters. |
| 4 | Click the Login button. | The user is successfully authenticated and redirected to `/inventory.html`. |

## Execution Results

| Field | Result |
|---|---|
| Actual Result | The customer was successfully authenticated and redirected to `/inventory.html`. |
| Status | PASS |
| Evidence | Screenshot showing the Products page and `/inventory.html` URL. |
| Defect ID | N/A |

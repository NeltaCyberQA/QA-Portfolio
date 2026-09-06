# TC-001 — Successful Login with Valid Credentials

## Test Case Information

| Field | Details |
|---|---|
| Test Case ID | TC-001 |
| Requirement ID | REQ-001 |
| Feature | User Login |
| Test Type | Functional / Positive |
| Priority | High |
| Status | Not Executed |

## Preconditions

- The QA/Staging environment is available and accessible.
- A registered QA customer account exists.
- Valid login credentials are available for the registered QA customer.

- ## Test Data

| Field | Test Data |
|---|---|
| Email | nelta.qa@test.com |
| Password | DisneyGirl1123! |

## Test Steps

| Step | Action | Expected Result |
|---|---|---|
| 1 | Navigate to the Login page in the QA/Staging environment. | The Login page is displayed successfully. |
| 2 | Enter `nelta.qa@test.com` in the Email field. | The email address is accepted and displayed in the Email field. |
| 3 | Enter `DisneyGirl1123!` in the Password field. | The password is accepted and displayed as masked characters. |
| 4 | Click the Login button. | The customer is successfully authenticated and redirected to `/account/dashboard`. |

## Execution Results

| Field | Result |
|---|---|
| Actual Result | Not Executed |
| Status | Not Executed |
| Evidence | Not Available |
| Defect ID | N/A |

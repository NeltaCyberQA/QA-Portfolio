# Requirements Traceability Matrix (RTM)

## Project: SauceDemo Manual QA Testing

The Requirements Traceability Matrix maps application requirements to test scenarios, test cases, execution results, and defects to ensure that requirements are covered by testing.

## Traceability Matrix

| Requirement ID | Requirement | Test Scenario | Test Case | Status | Defect |
|---|---|---|---|---|---|
| REQ-001 | Registered user can successfully log in with valid credentials | TS-001 | TC-001 | PASS | N/A |
| REQ-001 | User login rejects an incorrect password | TS-001 | TC-002 | PASS | N/A |
| REQ-001 | User login validates a required Username field | TS-001 | TC-003 | PASS | N/A |
| Shopping & Checkout Workflow | Explore product selection, cart, checkout, calculations, order completion, and PDF receipt | EXP-001 | Exploratory Testing | COMPLETED | BUG-001 |

## Coverage Summary

| Metric | Result |
|---|---|
| Documented Requirements | 1 |
| Executed Test Cases | 3 |
| Passed Test Cases | 3 |
| Failed Test Cases | 0 |
| Exploratory Sessions | 1 |
| Confirmed Defects | 1 |
| Open Defects | 1 |

## Defect Traceability

| Defect ID | Discovered During | Area | Status |
|---|---|---|---|
| BUG-001 | EXP-001 | Cart / Checkout | Open |

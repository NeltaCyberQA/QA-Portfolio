# Test Summary Report — SauceDemo Manual QA Project

## Project Information

| Field | Details |
|---|---|
| Application | SauceDemo |
| Testing Type | Manual Functional & Exploratory Testing |
| Environment | Web / Chrome |
| Tester | Nelta |
| Overall Status | Testing Completed with Open Defect |

## Testing Objective

The objective of this testing effort was to evaluate the core functionality and user experience of the SauceDemo web application, including login, product browsing, shopping cart behavior, checkout, order completion, and generated order documentation.

Testing included positive, negative, validation, exploratory, end-to-end, data consistency, and calculation validation techniques.

## Scope of Testing

The following areas were included in this testing effort:

- User login and authentication
- Invalid credential handling
- Required-field validation
- Product browsing and product details
- Add to Cart and Remove from Cart functionality
- Cart item count and state persistence
- Product price sorting
- Checkout workflow
- Item total, tax, and final total calculations
- Order completion
- PDF order receipt generation and validation

- ## Test Execution Summary

| Metric | Result |
|---|---|
| Test Cases Executed | 3 |
| Test Cases Passed | 3 |
| Test Cases Failed | 0 |
| Exploratory Test Sessions | 1 |
| Defects Identified | 1 |
| Open Defects | 1 |

## Test Case Results

| Test Case | Description | Result |
|---|---|---|
| TC-001 | Successful login with valid credentials | PASS |
| TC-002 | Login attempt with invalid password | PASS |
| TC-003 | Login attempt with blank Username field | PASS |
| EXP-001 | Shopping and checkout exploratory testing | COMPLETED |

## Defect Summary

| Defect ID | Description | Severity | Priority | Status |
|---|---|---|---|---|
| BUG-001 | User can complete checkout with an empty shopping cart and generate a $0.00 order receipt. | Medium | High | Open |

## Key Findings

- Login functionality behaved as expected for valid credentials, invalid passwords, and blank Username validation.
- Shopping cart item counts, product removal, navigation persistence, and price sorting behaved as expected.
- Product information remained consistent between the Products and Product Details pages.
- Checkout item totals, tax, and final totals were calculated correctly during the tested purchase flow.
- Order completion and PDF receipt generation functioned successfully for a valid order.
- Exploratory testing identified an issue allowing users to complete checkout with an empty cart and generate a $0.00 order receipt.

- ## Requirement Observations

During exploratory testing, the following areas were identified for additional business requirement clarification:

- Whether the checkout process should collect and display a complete shipping address.
- Whether completed orders should receive a unique order or confirmation number.
- Whether customers should be able to purchase multiple quantities of the same product.

These observations are not classified as defects because formal requirements confirming the expected behavior were not available.

## Overall Assessment

The tested SauceDemo functionality was generally stable across the login, product browsing, cart, and standard checkout workflows.

All three documented test cases passed, and the exploratory testing session successfully validated multiple shopping and checkout behaviors.

One reproducible defect remains open: the application allows a user to complete an order with an empty shopping cart and generate a $0.00 order receipt.

Based on the testing performed, additional testing is recommended for checkout edge cases and business-rule validation before the checkout workflow would be considered fully validated.


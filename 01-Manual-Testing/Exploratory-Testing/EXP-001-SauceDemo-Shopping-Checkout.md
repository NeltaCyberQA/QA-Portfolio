# EXP-001 — SauceDemo Shopping & Checkout Exploratory Test Session

## Session Information

| Field | Details |
|---|---|
| Session ID | EXP-001 |
| Application | SauceDemo |
| Area Tested | Products, Cart, Checkout, Order Confirmation, PDF Receipt |
| Test Type | Exploratory / Functional |
| Tester | Nelta |
| Environment | Web / Chrome |
| Status | Completed |

## Session Charter

Explore the SauceDemo shopping and checkout workflow to identify functional issues, data inconsistencies, calculation errors, navigation problems, and potential requirement gaps from the perspective of an end user.

## Areas Explored

- Add to Cart functionality
- Shopping cart item count
- Cart contents and product accuracy
- Cart state persistence during navigation
- Removing products from the cart
- Product sorting by price
- Product Details page navigation and data consistency
- Checkout workflow
- Item total calculation
- Tax and final total calculation
- Order completion
- Generated PDF order receipt

- ## Exploratory Test Results

| Area Tested | Observation | Result |
|---|---|---|
| Add to Cart | Selected product was added successfully. Button changed from Add to cart to Remove. | PASS |
| Cart Badge | Cart badge accurately updated as products were added and removed. | PASS |
| Cart Contents | Selected products appeared in the cart with the correct quantity and price. | PASS |
| Cart Persistence | Products remained in the cart while navigating between the Products and Cart pages. | PASS |
| Remove from Cart | Removed product disappeared from the cart and the cart badge updated correctly. | PASS |
| Price Sorting | Price Low to High displayed products in ascending order: $7.99, $9.99, $15.99, $15.99, $29.99, $49.99. | PASS |
| Product Details | Product name, price, and image remained consistent between the Products and Product Details pages. | PASS |
| Checkout Item Total | $15.99 + $9.99 produced the correct item total of $25.98. | PASS |
| Checkout Final Total | $25.98 + $2.08 tax produced the correct final total of $28.06. | PASS |
| Order Completion | Checkout completed successfully and the order-confirmation page was displayed. | PASS |
| PDF Receipt | PDF order receipt generated successfully and matched the purchased products, prices, tax, and total. | PASS |

## Requirement Questions / Observations

### OBS-001 — Shipping Address Information

**Observation:** The generated PDF receipt contains a "SHIP TO" section, but the checkout workflow only collects the customer's first name, last name, and postal code. A complete street address, city, and state are not collected.

**Question:** Should the checkout process collect a complete shipping address, and should that address appear on the generated order receipt?

**Classification:** Requirement clarification needed — not confirmed as a defect.

### OBS-002 — Order Confirmation Number

**Observation:** The generated PDF receipt does not display a unique order or confirmation number.

**Question:** Should each completed order receive a unique order identifier that appears on the order-confirmation page and PDF receipt?

**Classification:** Requirement clarification needed — not confirmed as a defect.

## Session Summary

The SauceDemo shopping and checkout workflow was explored from product selection through order completion and PDF receipt generation.

All executed functional checks behaved as expected during this session. No confirmed defects were identified.

Two potential requirement gaps were identified for further clarification:

- Complete shipping address information on the generated receipt.
- A unique order or confirmation number for completed purchases.

These observations require confirmation of the intended business requirements before they can be classified as defects.

## Test Evidence

- [View Checkout Overview — Calculation Validation](../Evidence/EXP-001-Checkout-Overview.png)
- [View Order Completion — Successful Checkout](../Evidence/EXP-001-Order-Complete.png)
- [View Generated PDF Order Receipt](../Evidence/EXP-001-PDF-Receipt.png)

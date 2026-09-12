# BUG-001 — Empty Cart Checkout Can Be Completed

## Bug Information

| Field | Details |
|---|---|
| Bug ID | BUG-001 |
| Feature | Cart / Checkout |
| Environment | SauceDemo / Chrome |
| Severity | Medium |
| Priority | High |
| Status | Open |
| Reproducibility | 2/2 |

## Summary

The application allows a user to proceed through checkout and successfully complete an order when the shopping cart contains zero products. After the empty order is completed, the application also allows the user to generate a PDF receipt showing no products and a total of $0.00.

## Preconditions

- User is logged in with a valid SauceDemo account.
- At least one product has been added to the shopping cart.
- User is on the Cart page.

- ## Steps to Reproduce

1. Navigate to the Products page.
2. Add one product to the shopping cart.
3. Open the shopping cart.
4. Remove the product so that the cart contains zero items.
5. Click the Checkout button.
6. Enter valid test data in the First Name, Last Name, and Zip/Postal Code fields.
7. Click Continue.
8. Verify the Checkout Overview displays no products and a total of $0.00.
9. Click Finish.
10. Observe the order confirmation page.
11. Click Generate PDF order.
12. Observe the generated PDF receipt.

## Expected Result

The application should prevent the user from proceeding with checkout when the shopping cart contains zero products. The Checkout button should be disabled or the user should receive a message indicating that at least one product must be added before checkout can continue.

## Actual Result

The application allows the user to proceed through checkout with zero products in the shopping cart. The Checkout Overview displays no products and a total of $0.00. The user can click Finish and receives a successful "Thank you for your order!" confirmation. The application also generates a PDF receipt containing no products and a total of $0.00.

## Business Impact

Users can complete orders containing no products, creating invalid $0.00 transactions. The application also generates a receipt for the empty order, which could create inaccurate order records and unnecessary processing if this behavior occurred in a production e-commerce system.

## Evidence

## Evidence

- [View Empty Cart Checkout Overview](../Evidence/BUG-001-Empty-Cart-Overview.png)
- [View Empty Order Confirmation](../Evidence/BUG-001-Empty-Order-Confirmation.png)
- [View Empty Order PDF Receipt](../Evidence/BUG-001-Empty-Order-PDF-Receipt.png)

- ## Notes

- The issue was reproduced successfully 2 out of 2 attempts.
- The defect was discovered during exploratory testing of the SauceDemo cart and checkout workflow.
- Expected behavior is based on standard e-commerce business logic and should be confirmed against the application's formal checkout requirements.

  

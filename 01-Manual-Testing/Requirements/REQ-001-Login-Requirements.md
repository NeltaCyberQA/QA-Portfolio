# REQ-001 — User Login Requirements

## User Story

As a registered customer, I want to log into my account using my email address and password so that I can access my account dashboard.

## Requirements Clarification

Before creating test scenarios and test cases, the following questions were identified during requirements analysis:

1. What error message should be displayed when an incorrect email address or password is entered?

2. How many consecutive unsuccessful login attempts are permitted before the account is temporarily locked?

3. If the account is locked, how long should the lockout period last?

4. Which environment should QA use for testing?

5. What are the minimum and maximum character requirements for the password, and are there restrictions or requirements for special characters?

6. What is the maximum character length allowed for the email address field?

7. Should email addresses be treated as case-insensitive?

8. What validation message should be displayed if the email field is left blank?

9. What should happen if the user enters an invalid email format?

10. Should the password be masked by default, and should there be a Show/Hide Password option?

11. What validation message should be displayed if the password field is left blank?

12. Should pressing the Enter key submit the login form?

13. What should happen if authentication succeeds but the customer is not redirected to the account dashboard?

14. What visual indication should be used to identify validation errors?

15. ## Acceptance Criteria

### Email Field

- The email field is required.
- The email address must be in a valid email format.
- Email addresses are case-insensitive.
- The email field accepts a maximum of 254 characters.
- Leading and trailing spaces are ignored.
- If the email field is blank, the message **"Email is required."** is displayed.
- If an invalid email format is entered, the message **"Enter a valid email address."** is displayed.

### Password Field

- The password field is required.
- Passwords are case-sensitive.
- Valid account passwords contain 8–64 characters.
- The password is masked by default.
- A Show/Hide Password control allows the customer to reveal or hide the password.
- If the password field is blank, the message **"Password is required."** is displayed.

### Invalid Login

- If the email address or password does not match a registered account, the message **"Email or password is incorrect."** is displayed.
- The system does not indicate whether the email address or password was incorrect.

### Account Lockout

- The account is temporarily locked after 5 consecutive failed login attempts.
- The lockout period is 15 minutes.
- When the account is locked, the message **"Your account has been temporarily locked due to multiple unsuccessful login attempts. Please try again later."** is displayed.
- A successful login before the lockout threshold resets the failed login attempt counter.

### Successful Login

- A customer with valid credentials is successfully authenticated.
- After successful authentication, the customer is redirected to `/account/dashboard`.

### Form Submission

- Clicking the Login button submits the login form.
- Pressing Enter while focused within the login form submits the form.
- If required fields are missing, login does not proceed and the appropriate validation message is displayed.

### Error Presentation

- Validation messages appear near the relevant field.
- Validation errors include an error icon.
- Validation errors use the application's designated error styling.
- Validation errors do not rely on color alone to communicate the error.

### Test Environment

- Testing will be performed in the QA/Staging environment.
- Desktop testing will include Chrome, Firefox, and Edge.
- Mobile testing will include Safari on iOS and Chrome on Android.
- Testing will use a registered QA customer account.
- Testing will be performed against the current QA build.

- ## Requirement Traceability

**Requirement ID:** REQ-001  
**Feature:** User Login  
**Priority:** High  
**Test Type:** Functional, Negative, Security-Focused, Usability, Accessibility, Cross-Browser, Mobile

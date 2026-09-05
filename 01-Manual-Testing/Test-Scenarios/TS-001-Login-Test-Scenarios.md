# TS-001 — User Login Test Scenarios

## Related Requirement

**Requirement ID:** REQ-001  
**Feature:** User Login

## Purpose

The purpose of these test scenarios is to validate the functional, negative, security, usability, and input-validation requirements of the User Login feature.

## Email Validation Scenarios

1. Verify that the **"Email is required."** validation message is displayed when the email field is left blank.

2. Verify that the **"Enter a valid email address."** validation message is displayed when an invalid email format is entered.

3. Verify that a registered customer can successfully log in when the email address is entered using uppercase or mixed-case letters.

4. Verify that leading and trailing spaces in the email address are ignored during login.

5. Verify that an email address containing 253 characters is accepted.

6. Verify that an email address containing the maximum allowed 254 characters is accepted.

7. Verify that the email field prevents entry of characters beyond the 254-character maximum.

## Password Validation Scenarios

8. Verify that the **"Password is required."** validation message is displayed when the password field is left blank.

9. Verify that login fails when the password is entered using incorrect letter casing.

10. Verify that password characters are masked by default when entered into the password field.

11. Verify that the Show Password control reveals the entered password.

12. Verify that the Hide Password control masks the password after it has been revealed.

13. Verify password handling when 7 characters are entered, which is below the 8-character minimum.

14. Verify password handling when exactly 8 characters are entered, which is the minimum allowed length.

15. Verify password handling when 9 characters are entered, which is just above the minimum length.

16. Verify password handling when 63 characters are entered, which is just below the maximum length.

17. Verify password handling when exactly 64 characters are entered, which is the maximum allowed length.

18. Verify password handling when 65 characters are entered, which exceeds the 64-character maximum.

19. ## Failed Login & Account Lockout Scenarios

19. Verify that the **"Email or password is incorrect."** message is displayed when a valid registered email address is entered with an incorrect password.

20. Verify that the account remains unlocked after four consecutive failed login attempts.

21. Verify that the account is temporarily locked after the fifth consecutive failed login attempt.

22. Verify that the appropriate account lockout message is displayed after the account becomes locked.

23. Verify that the customer cannot log in during the 15-minute account lockout period.

24. Verify that the customer can attempt to log in again after the 15-minute lockout period expires.

25. Verify that a successful login before five consecutive failed attempts resets the failed-attempt counter.

26. ## Successful Login, Navigation & Form Scenarios

26. Verify that a registered customer can successfully authenticate using a valid email address and valid password.

27. Verify that the customer is redirected to `/account/dashboard` after successful authentication.

28. Verify that clicking the Login button submits the login form.

29. Verify that pressing the Enter key while focused within the login form submits the form.

30. Verify that both the **"Email is required."** and **"Password is required."** validation messages are displayed when both fields are left blank.

31. Verify that login does not proceed when required fields are left blank.

## Error Presentation & Accessibility Scenarios

32. Verify that an email validation message appears near the email field when an email validation error occurs.

33. Verify that a password validation message appears near the password field when a password validation error occurs.

34. Verify that validation errors include an error icon.

35. Verify that validation errors do not rely on color alone to communicate an error.

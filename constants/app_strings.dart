class AppStrings {
  // Common strings
  static const String appName = 'Instronova';
  static const String continueText = 'Continue';
  static const String submit = 'Submit';
  static const String cancel = 'Cancel';
  static const String ok = 'OK';
  static const String error = 'Error';
  static const String success = 'Success';
  static const String loading = 'Loading...';

  // Login screen
  static const String login = 'Login';
  static const String loginTitle = 'Welcome Back';
  static const String loginSubtitle = 'Sign in to continue';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String rememberMe = 'Remember me';
  static const String dontHaveAccount = 'Don\'t have an account?';
  static const String loginWithGoogle = 'Continue with Google';
  static const String loginWithFacebook = 'Continue with Facebook';

  // Signup screen
  static const String signup = 'Sign Up';
  static const String signupTitle = 'Create Account';
  static const String signupSubtitle = 'Join us today!';
  static const String fullName = 'Full Name';
  static const String confirmPassword = 'Confirm Password';
  static const String alreadyHaveAccount = 'Already have an account?';
  static const String agreeToTerms = 'I agree to the ';
  static const String termsAndConditions = 'Terms and Conditions';
  static const String and = ' and ';
  static const String privacyPolicy = 'Privacy Policy';

  // OTP screen
  static const String otpTitle = 'Enter OTP';
  static const String otpSubtitle = 'We sent a code to your email';
  static const String enterOtp = 'Enter OTP';
  static const String resendOtp = 'Resend OTP';
  static const String resendIn = 'Resend in';
  static const String seconds = 'seconds';
  static const String didntReceiveCode = 'Didn\'t receive the code?';
  static const String verify = 'Verify';

  // Forgot Password screen
  static const String forgotPassword = 'Forgot Password';
  static const String forgotPasswordTitle = 'Reset Password';
  static const String forgotPasswordSubtitle = 'Enter your email to receive reset instructions';
  static const String sendResetLink = 'Send Reset Link';
  static const String backToLogin = 'Back to Login';

  // Error messages
  static const String errorInvalidEmail = 'Please enter a valid email address';
  static const String errorEmptyEmail = 'Please enter your email';
  static const String errorEmptyPassword = 'Please enter your password';
  static const String errorShortPassword = 'Password must be at least 6 characters';
  static const String errorPasswordMismatch = 'Passwords do not match';
  static const String errorEmptyName = 'Please enter your full name';
  static const String errorInvalidName = 'Please enter a valid name';
  static const String errorEmptyOtp = 'Please enter the OTP';
  static const String errorInvalidOtp = 'Invalid OTP code';
  static const String errorTermsNotAccepted = 'Please accept terms and conditions';
  static const String errorNetwork = 'Network error. Please check your connection';
  static const String errorServer = 'Server error. Please try again later';
  static const String errorInvalidCredentials = 'Invalid email or password';
  static const String errorEmailAlreadyExists = 'Email already exists';
  static const String errorUserNotFound = 'User not found';
  static const String errorTooManyRequests = 'Too many attempts. Please try again later';

  // Success messages
  static const String successLogin = 'Login successful!';
  static const String successSignup = 'Account created successfully!';
  static const String successOtpVerified = 'OTP verified successfully!';
  static const String successPasswordResetSent = 'Password reset link sent to your email';
  static const String successPasswordReset = 'Password reset successfully!';

  // Validation messages
  static const String validationEmailRequired = 'Email is required';
  static const String validationPasswordRequired = 'Password is required';
  static const String validationNameRequired = 'Full name is required';
  static const String validationOtpRequired = 'OTP is required';
}

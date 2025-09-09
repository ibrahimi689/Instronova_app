import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/signup_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/otp_screen.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    LoginScreen.routeName: (context) => const LoginScreen(),
    SignupScreen.routeName: (context) => const SignupScreen(),
    ForgotPasswordScreen.routeName: (context) =>
        const ForgotPasswordScreen(),
    OtpScreen.routeName: (context) => const OtpScreen(),
  };
}

import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../constants/app_strings.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  void _login() {
    setState(() {
      _isLoading = true;
    });

    // TODO: Connect with backend (Firebase/Auth Service)
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Successful (UI Demo)")),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Language Dropdown
              Align(
                alignment: Alignment.topCenter,
                child: DropdownButton<String>(
                  dropdownColor: Colors.black,
                  underline: const SizedBox(),
                  style: const TextStyle(color: Colors.white),
                  value: "English (US)",
                  items: const [
                    DropdownMenuItem(
                      value: "English (US)",
                      child: Text("English (US)"),
                    ),
                    DropdownMenuItem(
                      value: "Hindi",
                      child: Text("हिन्दी"),
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),

              const Spacer(),

              // Instagram Logo
              Image.asset(
                AppAssets.logo, // from app_assets.dart
                height: 80,
              ),
              const SizedBox(height: 32),

              // Username/Email input
              CustomTextField(
                controller: _usernameController,
                hintText: AppStrings.usernameHint,
              ),
              const SizedBox(height: 12),

              // Password input
              CustomTextField(
                controller: _passwordController,
                hintText: AppStrings.passwordHint,
                isPassword: true,
              ),
              const SizedBox(height: 16),

              // Login Button
              GradientButton(
                text: AppStrings.login,
                isLoading: _isLoading,
                onPressed: _login,
              ),
              const SizedBox(height: 16),

              // Forgot password
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/forgot-password");
                },
                child: const Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              const Spacer(),

              // Create new account
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12, horizontal: 40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                child: const Text(AppStrings.createAccount),
              ),

              const SizedBox(height: 12),
              const Text(
                "Meta",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

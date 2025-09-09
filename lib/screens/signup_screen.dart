import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_button.dart';

class SignupScreen extends StatefulWidget {
  static const String routeName = "/signup";

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  void _signup() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Signup Successful (UI Demo)")),
      );
      Navigator.pushReplacementNamed(context, "/login");
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
              const Spacer(),

              const Icon(Icons.person_add,
                  color: Colors.white, size: 80), // simple icon
              const SizedBox(height: 32),

              CustomTextField(
                controller: _emailController,
                hintText: "Email or mobile number",
              ),
              const SizedBox(height: 12),

              CustomTextField(
                controller: _usernameController,
                hintText: "Username",
              ),
              const SizedBox(height: 12),

              CustomTextField(
                controller: _passwordController,
                hintText: "Password",
                isPassword: true,
              ),
              const SizedBox(height: 16),

              GradientButton(
                text: AppStrings.signup,
                isLoading: _isLoading,
                onPressed: _signup,
              ),

              const Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/login");
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

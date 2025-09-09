import 'package:flutter/material.dart';
import '../widgets/otp_input.dart';
import '../widgets/gradient_button.dart';

class OtpScreen extends StatefulWidget {
  static const String routeName = "/otp";

  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool _isLoading = false;
  final TextEditingController _otpController = TextEditingController();

  void _verifyOtp() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("OTP Verified (UI Demo)")),
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

              const Icon(Icons.verified, color: Colors.white, size: 80),
              const SizedBox(height: 24),

              const Text(
                "Enter OTP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),

              const Text(
                "We have sent a 6-digit code to your email/phone",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),

              OtpInput(controller: _otpController, length: 6),
              const SizedBox(height: 24),

              GradientButton(
                text: "Verify",
                isLoading: _isLoading,
                onPressed: _verifyOtp,
              ),

              const Spacer(),

              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("OTP Resent (UI Demo)")),
                  );
                },
                child: const Text(
                  "Resend OTP",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

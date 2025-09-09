import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final int length;

  const OtpInput({
    super.key,
    required this.controller,
    this.length = 6,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: length,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: Colors.white,
        letterSpacing: 8,
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        counterText: "",
        hintText: "••••••",
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}



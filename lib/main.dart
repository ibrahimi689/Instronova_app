import 'package:flutter/material.dart';
import 'constants/app_strings.dart';
import 'routes/app_pages.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppPages.login, // 🔹 Login se start hoga
      routes: AppPages.routes,     // 🔹 Saare screens register
    );
  }
}

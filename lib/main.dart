import 'package:flutter/material.dart';
import 'portfolio.dart';


void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personal Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080A12),
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00E5B0),
          brightness: Brightness.dark,
          primary: const Color(0xFF00E5B0),
          secondary: const Color(0xFFFFD166),
          surface: const Color(0xFF111521),
        ),
      ),
      home: ProfileScreen(),
    );
  }
}
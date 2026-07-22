import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("চাঁভালি রক্ত ফাউন্ডেশন"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "চাঁভালি রক্ত ফাউন্ডেশন",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
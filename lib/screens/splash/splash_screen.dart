import 'dart:async';

import 'package:flutter/material.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    Timer(const Duration(seconds: 3), () {
        if (!mounted) return;

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const HomeScreen(),
            ),
        );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildDot(double delay) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value = (_controller.value - delay).abs();

        double scale = 1.0;

        if (value < .30) {
          scale = 1.5 - value;
        }

        return Transform.scale(
          scale: scale,
          child: Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              color: Color(0xffE53935),
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [

            const Spacer(),

            Image.asset(
              "assets/logo/logo.png",
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 24),

            const Text(
              "চাঁভালি রক্ত ফাউন্ডেশন",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xffD32F2F),
              ),
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [

                Expanded(
                  child: Divider(
                    indent: 70,
                    endIndent: 10,
                  ),
                ),

                Icon(
                  Icons.water_drop,
                  color: Color(0xffD32F2F),
                  size: 20,
                ),

                Expanded(
                  child: Divider(
                    indent: 10,
                    endIndent: 70,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 18),

            const Text(
              "রক্তের বন্ধনে, চাঁভালি সবখানে",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                buildDot(0.0),

                const SizedBox(width: 14),

                buildDot(0.2),

                const SizedBox(width: 14),

                buildDot(0.4),
              ],
            ),

            const Spacer(),

            const Divider(height: 1),

            const SizedBox(height: 16),

            const Text(
              "Version 1.0.0",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
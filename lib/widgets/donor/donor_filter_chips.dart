import 'package:flutter/material.dart';

class DonorFilterChips extends StatelessWidget {
  const DonorFilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _chip("A+"),
          _chip("জেলা"),
          _chip("এরিয়ার মধ্যে"),
          _chip("Reset", isReset: true),
        ],
      ),
    );
  }

  Widget _chip(String text, {bool isReset = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ActionChip(
        onPressed: () {},
        backgroundColor:
            isReset ? Colors.red.shade50 : Colors.white,
        side: BorderSide(
          color: isReset ? Colors.red : Colors.grey.shade300,
        ),
        label: Text(
          text,
          style: TextStyle(
            color: isReset ? Colors.red : Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
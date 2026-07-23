import 'package:flutter/material.dart';

class DonorSearchBar extends StatelessWidget {
  const DonorSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "ডোনার খুঁজুন...",
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.white,
              contentPadding: const EdgeInsets.symmetric(vertical: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        Material(
          color: Colors.red,
          borderRadius: BorderRadius.circular(14),
          child: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: () {
              // Filter Bottom Sheet
            },
            child: const SizedBox(
              width: 54,
              height: 54,
              child: Icon(
                Icons.tune_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
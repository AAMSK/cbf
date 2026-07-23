import 'package:flutter/material.dart';

import '../../../widgets/home/status_chip.dart';
import '../../../widgets/home/blood_request_card.dart';

class MyRequestTab extends StatelessWidget {
  const MyRequestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                StatusChip(
                  title: "সব",
                  selected: true,
                ),
                SizedBox(width: 8),
                StatusChip(title: "Pending"),
                SizedBox(width: 8),
                StatusChip(title: "Active"),
                SizedBox(width: 8),
                StatusChip(title: "Completed"),
                SizedBox(width: 8),
                StatusChip(title: "Cancelled"),
              ],
            ),
          ),
        ),

        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 80),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const BloodRequestCard();
            },
          ),
        ),
      ],
    );
  }
}
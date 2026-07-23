import 'package:flutter/material.dart';

import '../../widgets/home/blood_request_card.dart';

class PostTab extends StatelessWidget {
  const PostTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  "সাম্প্রতিক রক্তের অনুরোধ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // TODO: Filter
                },
                icon: const Icon(Icons.filter_list),
                label: const Text("ফিল্টার"),
              ),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(bottom: 80),
            itemCount: 10,
            itemBuilder: (context, index) {
              return const BloodRequestCard();
            },
          ),
        ),
      ],
    );
  }
}
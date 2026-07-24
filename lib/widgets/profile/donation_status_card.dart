import 'package:flutter/material.dart';

class DonationStatusCard extends StatelessWidget {
  const DonationStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "রক্তদান স্ট্যাটাস",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          _infoTile(
            Icons.bloodtype,
            Colors.red,
            "সর্বশেষ রক্তদান",
            "১৫ মার্চ ২০২৬",
          ),

          const SizedBox(height: 12),

          _infoTile(
            Icons.event_available,
            Colors.green,
            "পরবর্তী যোগ্যতার তারিখ",
            "১৫ জুলাই ২০২৬",
          ),

          const Divider(height: 30),

          Row(
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "আমি এখন রক্ত দিতে উপলব্ধ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "এটি চালু থাকলে অন্যরা আপনাকে ডোনার তালিকায় দেখতে পাবে",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              Switch(
                value: true,
                activeColor: Colors.red,
                onChanged: (value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoTile(
    IconData icon,
    Color color,
    String title,
    String value,
  ) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: color.withOpacity(.1),
          child: Icon(icon, color: color),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
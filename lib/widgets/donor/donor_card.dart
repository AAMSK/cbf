import 'package:flutter/material.dart';

class DonorCard extends StatelessWidget {
  const DonorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final donors = [
      {
        "name": "মোঃ আব্দুল্লাহ আল মামুন",
        "group": "A+",
        "address": "চাঁভালী, ফটিকছড়ি",
        "distance": "১.২ কিমি",
        "lastDonate": "৩ মাস আগে",
      },
      {
        "name": "রাকিব হাসান",
        "group": "O+",
        "address": "হাটহাজারী, চট্টগ্রাম",
        "distance": "৫.৪ কিমি",
        "lastDonate": "৫ মাস আগে",
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 100),
      itemCount: donors.length,
      itemBuilder: (context, index) {
        final donor = donors[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 14),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.red.shade100,
                      child: Text(
                        donor["group"] as String,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            donor["name"] as String,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            donor["address"] as String,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 6),

                          Text(
                            "সর্বশেষ রক্তদান: ${donor["lastDonate"]}",
                            style: const TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(donor["distance"] as String),
                  ],
                ),

                const SizedBox(height: 18),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          // Donor Profile
                        },
                        icon: const Icon(Icons.person),
                        label: const Text("প্রোফাইল"),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          // Dialer Open
                        },
                        icon: const Icon(Icons.call),
                        label: const Text("যোগাযোগ"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
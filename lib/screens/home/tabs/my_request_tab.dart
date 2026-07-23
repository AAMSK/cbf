import 'package:flutter/material.dart';

class MyRequestTab extends StatelessWidget {
  const MyRequestTab({super.key});

  @override
  Widget build(BuildContext context) {
    final requests = [
      {
        "patient": "মোঃ রফিকুল ইসলাম",
        "group": "A+",
        "hospital": "ঢাকা মেডিকেল কলেজ হাসপাতাল",
        "location": "ঢাকা",
        "status": "Active",
        "date": "২৩ জুলাই ২০২৬",
      },
      {
        "patient": "সুমাইয়া আক্তার",
        "group": "O-",
        "hospital": "চট্টগ্রাম মেডিকেল কলেজ",
        "location": "চট্টগ্রাম",
        "status": "Completed",
        "date": "২০ জুলাই ২০২৬",
      },
    ];

    if (requests.isEmpty) {
      return const Center(
        child: Text(
          "এখনও কোনো রিকুয়েস্ট করা হয়নি",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final item = requests[index];

        final bool active = item["status"] == "Active";

        return Card(
          margin: const EdgeInsets.only(bottom: 16),
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
                      radius: 24,
                      backgroundColor: Colors.red.shade100,
                      child: Text(
                        item["group"] as String,
                        style: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["patient"] as String,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(item["hospital"] as String),
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: active
                            ? Colors.green
                            : Colors.grey,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: Text(
                        item["status"] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      size: 18,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        item["location"] as String,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 18,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 5),
                    Text(item["date"] as String),
                  ],
                ),

                const SizedBox(height: 18),

                Row(
                  children: [

                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        label: const Text("Edit"),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                        label: const Text("Delete"),
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
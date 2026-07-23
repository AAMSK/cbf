import 'package:flutter/material.dart';

class PostTab extends StatelessWidget {
  const PostTab({super.key});

  @override
  Widget build(BuildContext context) {
    final requests = [
      {
        "name": "মোঃ রফিকুল ইসলাম",
        "group": "A+",
        "hospital": "ঢাকা মেডিকেল কলেজ হাসপাতাল",
        "location": "ঢাকা",
        "time": "১০ মিনিট আগে",
        "units": "২ ব্যাগ",
        "urgent": true,
      },
      {
        "name": "সুমাইয়া আক্তার",
        "group": "O-",
        "hospital": "চট্টগ্রাম মেডিকেল কলেজ",
        "location": "চট্টগ্রাম",
        "time": "৩০ মিনিট আগে",
        "units": "১ ব্যাগ",
        "urgent": false,
      },
    ];

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 100),
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final item = requests[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item["name"] as String,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item["hospital"] as String,
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (item["urgent"] as bool)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "জরুরি",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    const Icon(Icons.location_on,
                        size: 18, color: Colors.red),
                    const SizedBox(width: 5),
                    Text(item["location"] as String),
                    const Spacer(),
                    const Icon(Icons.access_time,
                        size: 18, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(item["time"] as String),
                  ],
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Icon(Icons.bloodtype,
                        color: Colors.red),
                    const SizedBox(width: 5),
                    Text("প্রয়োজন: ${item["units"]}"),
                  ],
                ),

                const SizedBox(height: 18),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.call),
                        label: const Text("কল"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.volunteer_activism),
                        label: const Text("রক্ত দিব"),
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
import 'package:flutter/material.dart';

class RequestCard extends StatelessWidget {
  const BloodRequestCard({
    super.key,
    this.bloodGroup = "A+",
    this.patientName = "মোঃ আব্দুল করিম",
    this.hospitalName = "ঢাকা মেডিকেল কলেজ হাসপাতাল",
    this.location = "ঢাকা",
    this.units = "১ ব্যাগ",
    this.priority = "জরুরি",
    this.time = "আজ, ২:৩০ PM",
    this.distance = "২.৪ কিমি",
  });

  final String bloodGroup;
  final String patientName;
  final String hospitalName;
  final String location;
  final String units;
  final String priority;
  final String time;
  final String distance;

  Color get priorityColor {
    switch (priority) {
      case "জরুরি":
        return Colors.red;
      case "মাঝারি":
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    bloodGroup,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(width: 14),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        patientName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(hospitalName),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: priorityColor.withOpacity(.12),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    priority,
                    style: TextStyle(
                      color: priorityColor,
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
                    size: 18, color: Colors.grey),
                const SizedBox(width: 6),
                Expanded(child: Text(location)),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.bloodtype,
                    size: 18, color: Colors.red),
                const SizedBox(width: 6),
                Text(units),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.access_time,
                    size: 18, color: Colors.grey),
                const SizedBox(width: 6),
                Expanded(child: Text(time)),
                Text(
                  distance,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 46,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // TODO: বিস্তারিত পেজ
                },
                child: const Text("বিস্তারিত দেখুন"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
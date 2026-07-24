import 'package:flutter/material.dart';

class ContributionCard extends StatelessWidget {
  const ContributionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
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
            "আমার অবদান",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: const [
              Expanded(
                child: _StatItem(
                  icon: Icons.bloodtype,
                  color: Colors.red,
                  value: "12",
                  title: "রক্তদান",
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _StatItem(
                  icon: Icons.favorite,
                  color: Colors.pink,
                  value: "28",
                  title: "সাড়া",
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          Row(
            children: const [
              Expanded(
                child: _StatItem(
                  icon: Icons.people,
                  color: Colors.blue,
                  value: "24",
                  title: "সহায়তা",
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _StatItem(
                  icon: Icons.workspace_premium,
                  color: Colors.amber,
                  value: "Gold",
                  title: "লেভেল",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String value;
  final String title;

  const _StatItem({
    required this.icon,
    required this.color,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: color.withOpacity(.08),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
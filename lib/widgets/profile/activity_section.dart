import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
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
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "আমার কার্যক্রম",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          _item(
            Icons.assignment_outlined,
            "আমার রক্তের অনুরোধ",
            () {},
          ),

          _item(
            Icons.volunteer_activism_outlined,
            "আমার রেসপন্স",
            () {},
          ),

          _item(
            Icons.history,
            "রক্তদানের ইতিহাস",
            () {},
          ),

          _item(
            Icons.workspace_premium_outlined,
            "ব্যাজ ও অর্জন",
            () {},
          ),

          _item(
            Icons.bookmark_border,
            "সংরক্ষিত পোস্ট",
            () {},
          ),
        ],
      ),
    );
  }

  Widget _item(
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: Colors.red),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
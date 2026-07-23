import 'package:flutter/material.dart';

import '../../../widgets/donor/donor_card.dart';
import '../../../widgets/donor/donor_filter_chips.dart';
import '../../../widgets/donor/donor_search_bar.dart';
import '../../../widgets/donor/donor_summary_card.dart';

class DonorsTab extends StatelessWidget {
  const DonorsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [

        SizedBox(height: 12),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DonorSearchBar(),
        ),

        SizedBox(height: 12),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DonorFilterChips(),
        ),

        SizedBox(height: 12),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: DonorSummaryCard(),
        ),

        SizedBox(height: 12),

        Expanded(
          child: DonorCard(),
        ),
      ],
    );
  }
}
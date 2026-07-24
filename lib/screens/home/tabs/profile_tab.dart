import 'package:flutter/material.dart';

import '../../../widgets/profile/profile_header.dart';
import '../../../widgets/profile/profile_info_card.dart';
import '../../../widgets/profile/donation_status_card.dart';
import '../../../widgets/profile/contribution_card.dart';
import '../../../widgets/profile/activity_section.dart';
import '../../../widgets/profile/settings_section.dart';
import '../../../widgets/profile/logout_button.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Header
        ProfileHeader(),

        // Body
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 16),
            child: Column(
              children: [
                ProfileInfoCard(),

                DonationStatusCard(),

                ContributionCard(),

                ActivitySection(),

                SettingsSection(),

                LogoutButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
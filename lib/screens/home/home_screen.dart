import 'package:flutter/material.dart';

import '../../widgets/home/banner_card.dart';
import '../../widgets/home/home_header.dart';
import 'tabs/post_tab.dart';
import 'tabs/my_request_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  // TODO: পরে API/Laravel থেকে আসবে
  final String? bannerImage =
      "https://your-domain.com/uploads/banner.jpg";

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      body: SafeArea(
        child: Column(
          children: [
            /// Header
            const HomeHeader(),

            /// Dynamic Banner
            BannerCard(
              imageUrl: bannerImage,
            ),

            /// Tabs
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black87,
                  dividerColor: Colors.transparent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(text: "পোস্ট"),
                    Tab(text: "আমার রিকুয়েস্ট"),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            /// Pages
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PostTab(),
                  MyRequestTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
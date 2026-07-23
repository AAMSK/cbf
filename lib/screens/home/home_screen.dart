import 'package:flutter/material.dart';

import '../../widgets/home/banner_card.dart';
import '../../widgets/home/home_header.dart';
import 'tabs/donors_tab.dart';
import 'tabs/health_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/post_tab.dart';
import 'tabs/my_request_tab.dart';
import '../../widgets/navigation/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  int _currentIndex = 0;

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
    final pages = [
      SizedBox.expand(
        child: Column(
          children: [
            BannerCard(
              imageUrl: bannerImage,
            ),

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

  const DonorsTab(),
  const HealthTab(),
  const ProfileTab(),
];

    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      body: SafeArea(
        child: Column(
          children: [
            /// Header
            const HomeHeader(),

            Expanded(
                child: IndexedStack(
                  index: _currentIndex,
                  children: pages,
                ),
              ),
            ],
          ),
        ),
        
      floatingActionButton: _currentIndex == 0
    ? FloatingActionButton(
        heroTag: "add_request",
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        onPressed: () {
          // Create Request Screen
        },
        child: const Icon(Icons.add),
      )
    : null,

      floatingActionButtonLocation:
      FloatingActionButtonLocation.endFloat,
        
       bottomNavigationBar: BottomNavigation(
          currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
            });
          },
        ),
      
    );
  }
}
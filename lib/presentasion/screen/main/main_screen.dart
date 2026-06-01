import 'package:equiibrium/presentasion/widget/appbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:equiibrium/presentasion/screen/main/dashboard/dashboard.dart';
import 'package:equiibrium/presentasion/screen/main/portofolio/portofolio.dart';
import 'package:equiibrium/presentasion/screen/main/profile/profile.dart';
import 'package:equiibrium/presentasion/screen/main/watchlist/watchlist.dart';
import 'package:equiibrium/presentasion/widget/bottom_navigation_custom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DashboardScreen(),
    const WatchlistScreen(),
    const PortofolioScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(),
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationCustom(
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

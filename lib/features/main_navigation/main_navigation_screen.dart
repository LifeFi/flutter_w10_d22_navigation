import 'package:flutter/material.dart';
import 'package:flutter_w10_d22_navigation/constants/sizes.dart';
import 'package:flutter_w10_d22_navigation/features/home/views/home_screen.dart';
import 'package:flutter_w10_d22_navigation/features/main_navigation/widgets/nav_tab.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const HomeScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const Placeholder(
              child: Center(
                child: Text(
                  "Search",
                  style: TextStyle(
                    fontSize: Sizes.size28,
                  ),
                ),
              ),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const Placeholder(
              child: Center(
                child: Text(
                  "Post",
                  style: TextStyle(
                    fontSize: Sizes.size28,
                  ),
                ),
              ),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const Placeholder(
              child: Center(
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: Sizes.size28,
                  ),
                ),
              ),
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 4,
            child: const Placeholder(
              child: Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: Sizes.size28,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavTab(
              isSelected: _selectedIndex == 0,
              icon: FontAwesomeIcons.house,
              selectedIcon: FontAwesomeIcons.house,
              onTap: () => _onTap(0),
            ),
            NavTab(
              isSelected: _selectedIndex == 1,
              icon: FontAwesomeIcons.magnifyingGlass,
              selectedIcon: FontAwesomeIcons.magnifyingGlass,
              onTap: () => _onTap(1),
            ),
            NavTab(
              isSelected: _selectedIndex == 2,
              icon: FontAwesomeIcons.penToSquare,
              selectedIcon: FontAwesomeIcons.penToSquare,
              onTap: () => _onTap(2),
            ),
            NavTab(
              isSelected: _selectedIndex == 3,
              icon: FontAwesomeIcons.heart,
              selectedIcon: FontAwesomeIcons.solidHeart,
              onTap: () => _onTap(3),
            ),
            NavTab(
              isSelected: _selectedIndex == 4,
              icon: FontAwesomeIcons.user,
              selectedIcon: FontAwesomeIcons.userLarge,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}

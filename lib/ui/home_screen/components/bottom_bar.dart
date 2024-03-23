import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoes_app/shoes_app.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;


  final pages = [
    HomeScreen(),
    ExploreScreen(),
    Cart(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(
            icon: Icon(Icons.home_filled,
            color: _selectedIndex == 0 
                  ? Colors.white
                  : Colors.grey
            ),
            title: 'Home',
            ),
          TabItem(
            icon: Icon(Icons.explore,
            color: _selectedIndex == 1
                  ? Colors.white
                  : Colors.grey
            ),
            title: 'Explore',
            ),
          TabItem(
            icon: Icon(Icons.shopping_bag_outlined,
            color: _selectedIndex == 2
                  ? Colors.white
                  : Colors.grey
            ),
            title: 'Cart'
            ),
          TabItem(
            icon: Icon(Icons.person,
            color: _selectedIndex == 3
                  ? Colors.white
                  : Colors.grey
            ),
            title: 'Profile'
            ),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        activeColor: Color(0xFFFFB301),
        elevation: 4,
        color: Colors.transparent,
        curve: Curves.easeInOut,
        height: 60,
        ),
    );
  }
}
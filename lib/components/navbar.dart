// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBar extends StatelessWidget {
  MyNavBar({super.key, required this.onTabChange});

  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: GNav(
        color: Colors.black26,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.orange,
        tabActiveBorder: Border.all(color: Colors.white),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 30,
        gap: 5,
        onTabChange: (value) {
          onTabChange!(value);
        },
        tabs: const [
          GButton(
            icon: Icons.home,
            iconSize: 30,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            iconSize: 30,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar(
      {super.key, required this.onTabChange, required this.selectedIndex});
  final void Function(int) onTabChange;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return GNav(
        tabBackgroundColor: Colors.grey.shade100,
        backgroundColor: Theme.of(context).primaryColor,
        gap: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.white,
        onTabChange: (value) => onTabChange(value),
        selectedIndex: selectedIndex,
        tabBorderRadius: 12,
        tabs: [
          GButton(
            iconColor: Theme.of(context).colorScheme.onPrimary,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            icon: Icons.home_filled,
            text: 'Shop',
          ),
          GButton(
            iconColor: Theme.of(context).colorScheme.onPrimary,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            icon: Icons.shopping_bag_rounded,
            text: 'Card',
          ),
          GButton(
            iconColor: Theme.of(context).colorScheme.onPrimary,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            icon: Icons.settings,
            text: 'Settings',
          )
        ]);
  }
}

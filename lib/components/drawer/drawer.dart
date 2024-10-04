import 'package:flutter/material.dart';
import 'package:flutter_app_3/components/drawer/drawer-tile/drawer_tile.dart';
import 'package:flutter_app_3/components/my-bottom-navbar/bottom_nav_bar_idex_cubit.dart';
import 'package:flutter_app_3/pages/intro_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Theme(
              data: Theme.of(context).copyWith(
                dividerTheme: const DividerThemeData(color: Colors.transparent),
              ),
              child: DrawerHeader(child: Image.asset('lib/images/nike.png'))),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: DrawerTile(
              onTap: () {
                context.read<MyBottomNavigationBarCubit>().onTabChange(0);
                Navigator.pop(context);
              },
              icon: Icons.home_filled,
              title: 'SHOPE',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: DrawerTile(
              onTap: () {
                context.read<MyBottomNavigationBarCubit>().onTabChange(1);
                Navigator.pop(context);
              },
              icon: Icons.shopping_bag_rounded,
              title: 'CARD',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: DrawerTile(
              onTap: () {
                context.read<MyBottomNavigationBarCubit>().onTabChange(2);
                Navigator.pop(context);
              },
              icon: Icons.settings,
              title: 'SETTINGS',
            ),
          ),
          Expanded(child: Container()),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.grey.shade600, fontWeight: FontWeight.w800),
                ),
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const IntroPage(),
                    ),
                    (route) => false),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app_3/components/drawer/drawer.dart';
import 'package:flutter_app_3/components/my-bottom-navbar/bottom_nav_bar.dart';
import 'package:flutter_app_3/pages/cart_page.dart';
import 'package:flutter_app_3/pages/settings_page.dart';
import 'package:flutter_app_3/pages/shop_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../components/my-bottom-navbar/bottom_nav_bar_idex_cubit.dart';
import 'package:flutter_app_3/cubits/cart_cubit.dart'; // Імпорт твого CartCubit

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MyBottomNavigationBarCubit>(
          create: (context) => MyBottomNavigationBarCubit(),
        ),
        BlocProvider<CartCubit>(
          create: (context) => CartCubit(),
        ),
      ],
      child: BlocBuilder<MyBottomNavigationBarCubit, int>(
        builder: (context, state) => Scaffold(
          appBar: AppBar(
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu_outlined,
                    size: 34,
                  )),
            ),
          ),
          bottomNavigationBar: MyBottomNavigationBar(
            selectedIndex: state,
            onTabChange: (state) =>
                context.read<MyBottomNavigationBarCubit>().onTabChange(state),
          ),
          body: _pages[state],
          drawer: const MyDrawer(),
        ),
      ),
    );
  }
}

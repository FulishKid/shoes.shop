import 'package:flutter/material.dart';

import 'package:flutter_app_3/components/shop-page/shoe-tile/shoe_tile.dart';
import 'package:flutter_app_3/cubits/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchBar(
              elevation: const MaterialStatePropertyAll(0),
              backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
              hintText: 'Search...',
              trailing: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Shoes',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ShoeTile(
                            shoe: context.read<CartCubit>().shopList[index],
                          );
                        },
                        itemCount: context.read<CartCubit>().shopList.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}

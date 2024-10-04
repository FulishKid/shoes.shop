import 'package:flutter/material.dart';
import 'package:flutter_app_3/components/cart-page/cart-tile/cart_tile.dart';
import 'package:flutter_app_3/cubits/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const Text(
            'Your Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CartTile(
                    shoe: context.read<CartCubit>().userCart[index]);
              },
              itemCount: context.read<CartCubit>().userCart.length,
            ),
          )
        ],
      ),
    )
        // bottomNavigationBar: MyBottomNavigationBar(),
        );
  }
}

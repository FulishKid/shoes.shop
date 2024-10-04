import 'package:flutter/material.dart';
import 'package:flutter_app_3/cubits/cart_cubit.dart';
import 'package:flutter_app_3/models/shoe.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShoeTile extends StatelessWidget {
  const ShoeTile({super.key, required this.shoe});
  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade100,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23, bottom: 18, top: 6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // img path
            Image.asset(
              shoe.imagePath,
              width: 250,
              height: 150,
            ),

            // description
            SizedBox(
              width: 250,
              child: Text(
                shoe.description,
                softWrap: true,
                maxLines: 3,
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),

            // name, price and button
            SizedBox(
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text section with name and price
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          shoe.name,
                          // overflow:
                          //     TextOverflow.ellipsis, // Обмежує довгі назви
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '\$${shoe.price}',
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),

                  // Add button
                  IconButton(
                    padding: EdgeInsets.zero,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      context.read<CartCubit>().addItemToCart(shoe);
                    },
                    icon: const Icon(
                      Icons.add_box_rounded,
                      size: 55,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

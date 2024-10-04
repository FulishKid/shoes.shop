import 'package:flutter/material.dart';
import 'package:flutter_app_3/models/shoe.dart';

class CartTile extends StatelessWidget {
  const CartTile({super.key, required this.shoe});
  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
      child: Container(

        padding: const EdgeInsets.only(top: 20),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 2),
          borderRadius: BorderRadius.circular(10),
          // color: Colors.grey.shade100,
          gradient: const LinearGradient(colors: [
            Colors.white,

            // Colors.grey.shade200,
            Color.fromARGB(255, 255, 255, 255)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          children: [
            Image.asset(
              shoe.imagePath,
              height: 150,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 60,
              decoration: const BoxDecoration(
                  // border: Border.all(color: Colors.grey.shade300, width: 2),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(8),
                      ),
                      color: Colors.red.shade500,
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

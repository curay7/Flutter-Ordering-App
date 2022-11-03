import 'package:flutter/material.dart';

import 'cart_list_card.dart';

class CartList extends StatelessWidget {
  const CartList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              CartListCard(
                size: size,
                productName: "Beef Burger",
                imageProduct:
                    Image(image: AssetImage("assets/images/burgerimage.png")),
              ),
              CartListCard(
                size: size,
                productName: "Chipotle Che...",
                imageProduct:
                    Image(image: AssetImage("assets/images/images2.png")),
              ),
              CartListCard(
                size: size,
                productName: "Beef Burger",
                imageProduct:
                    Image(image: AssetImage("assets/images/burgerimage.png")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

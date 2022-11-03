import 'package:flutter/material.dart';

class CartListCard extends StatelessWidget {
  final Size size;
  final String productName;
  final Image imageProduct;
  const CartListCard({
    Key? key,
    required this.size,
    required this.productName,
    required this.imageProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.17,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.42))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Container(
              child: imageProduct,
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "1",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    )
                  ],
                )
              ],
            )),
          ),
          Flexible(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "₱ 441.90",
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

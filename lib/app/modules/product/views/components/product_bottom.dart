import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

class ProductBottom extends StatelessWidget {
  const ProductBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Price",
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Text(
                  " ₱41.90",
                  style: TextStyle(fontSize: 24, color: Color(0xFF202C59)),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print("Add To Cart");
            },
            child: Container(
              width: 170,
              height: double.infinity,
              margin: EdgeInsets.only(bottom: 7),
              decoration: BoxDecoration(
                color: cPrimaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.shopping_bag,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    "Add To Cart",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

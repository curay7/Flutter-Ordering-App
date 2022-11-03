import 'package:flutter/material.dart';

class CartInfo extends StatelessWidget {
  const CartInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: size.width * 0.90,
            margin: EdgeInsets.symmetric(horizontal: 17),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFF202C59),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Apply Coupons",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: size.height * 0.17,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Item Total",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text("₱62.85")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Charge",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text("₱25.85")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Charge",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text("₱27.85")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tax",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text("7.85")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total :",
                        style: TextStyle(fontSize: 14),
                      ),
                      Text("₱65.35")
                    ],
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            width: size.width * 0.90,
            margin: EdgeInsets.symmetric(horizontal: 17),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xFFFFc61F).withOpacity(0.90),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

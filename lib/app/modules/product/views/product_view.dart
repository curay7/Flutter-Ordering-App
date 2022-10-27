import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Color(0xFFE5E5E5).withOpacity(0.10),
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      CustomIconBtn(
                        widgetInsert: Icon(Icons.arrow_back_ios),
                        iconColor: Colors.black,
                        iconSize: 40,
                      ),
                      CustomIconBtn(
                        widgetInsert: Icon(Icons.favorite_outline),
                        iconColor: Colors.red,
                        iconSize: 40,
                      )
                    ],
                  ),
                )),
            Flexible(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/Ellipse.png"),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Chipotle Cheesy Chicken",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff202C59),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "A signature flame-grilled chicken patty topped with smoked beef",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: double.infinity,
                        child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/burgerimage.png")),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        height: double.infinity,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: CustomIconBtn(
                                      widgetInsert: Text(
                                        "S",
                                        style:
                                            TextStyle(color: Color(0xFF202C59)),
                                      ),
                                      iconSize: 50),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 70),
                                  child: CustomIconBtn(
                                    widgetInsert: Text(
                                      "M",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    iconSize: 50,
                                    isActive: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: CustomIconBtn(
                                      widgetInsert: Text(
                                        "L",
                                        style:
                                            TextStyle(color: Color(0xFF202C59)),
                                      ),
                                      iconSize: 50),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 250,
                              height: 0.5,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CustomCircleBtn(
                                  icon: Icons.remove,
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                Text(
                                  "7",
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xFF202C59)),
                                ),
                                SizedBox(
                                  width: 55,
                                ),
                                CustomCircleBtn(
                                  icon: Icons.add,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
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
                          style:
                              TextStyle(fontSize: 24, color: Color(0xFF202C59)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    margin: EdgeInsets.only(bottom: 7),
                    decoration: BoxDecoration(
                      color: Color(0xFFD95D39),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class CustomCircleBtn extends StatelessWidget {
  final IconData icon;
  const CustomCircleBtn({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xFFD95D39), borderRadius: BorderRadius.circular(60)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CustomIconBtn extends StatelessWidget {
  final Widget widgetInsert;
  final Color? iconColor;
  final bool? isActive;
  final double iconSize;
  const CustomIconBtn({
    Key? key,
    required this.widgetInsert,
    this.iconColor,
    this.isActive,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize,
      height: iconSize,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (isActive == true) ? Color(0xffD95D39) : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: IconButton(
        onPressed: (() {}),
        icon: widgetInsert,
        color: (isActive == true) ? Colors.white : iconColor,
      ),
    );
  }
}

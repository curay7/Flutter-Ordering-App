import 'package:flutter/material.dart';

import '../widget/custom_circle_btn.dart';
import '../widget/custom_icon_btn.dart';

class CustomProductBody extends StatelessWidget {
  const CustomProductBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 7,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Ellipse.png"),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _productDiscreption(),
              _productImage(),
              _productButtonController()
            ],
          ),
        ),
      ),
    );
  }

  _productDiscreption() {
    return Container(
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
            style: TextStyle(fontSize: 14, color: Colors.black),
          )
        ],
      ),
    );
  }

  _productImage() {
    return Container(
      child: Image(
          fit: BoxFit.fill, image: AssetImage("assets/images/burgerimage.png")),
    );
  }

  _productButtonController() {
    return Container(
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
                    style: TextStyle(color: Color(0xFF202C59)),
                  ),
                  iconSize: 50,
                  cfunction: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: CustomIconBtn(
                  widgetInsert: Text(
                    "M",
                    style: TextStyle(color: Colors.white),
                  ),
                  cfunction: () {},
                  iconSize: 50,
                  isActive: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: CustomIconBtn(
                  widgetInsert: Text(
                    "L",
                    style: TextStyle(color: Color(0xFF202C59)),
                  ),
                  iconSize: 50,
                  cfunction: () {},
                ),
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
                function: () {},
              ),
              SizedBox(
                width: 55,
              ),
              Text(
                "7",
                style: TextStyle(fontSize: 24, color: Color(0xFF202C59)),
              ),
              SizedBox(
                width: 55,
              ),
              CustomCircleBtn(
                icon: Icons.add,
                function: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';
import 'components/intro_body.dart';
import 'components/intro_header.dart';

class IntroView3 extends GetView<IntroController> {
  const IntroView3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: size * 0.50,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/g3.png"),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Get delivery on Time",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt  consectetur adipiscing eli  eiusmod ",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 7,
                    height: 7,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: 30,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: cPrimaryColor,
                    ),
                  ),
                ],
              ),
              Container(
                width: size,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 0.2,
                color: Colors.grey[200],
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.toNamed("home");
                  },
                  child: Container(
                      width: size * 0.75,
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: cPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

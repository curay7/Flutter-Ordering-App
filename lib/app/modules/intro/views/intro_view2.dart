import 'dart:ui';

import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';
import 'components/intro_body.dart';
import 'components/intro_header.dart';
import 'intro_view3.dart';

class IntroView2 extends GetView<IntroController> {
  const IntroView2({Key? key}) : super(key: key);
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
                  image: AssetImage("assets/images/g2.png"),
                ),
              ),
              Column(
                children: <Widget>[
                  Text(
                    "Choose your product",
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
                      "Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt  consectetur adipiscing eli  eiusmod ",
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
                    width: 30,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: cPrimaryColor,
                    ),
                  ),
                  Container(
                    height: 7,
                    width: 7,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
              Container(
                width: size,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 0.2,
                color: Colors.grey[200],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(IntroView3());
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      decoration: BoxDecoration(
                          color: cPrimaryColor,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(154, 197, 164, 62),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 17,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

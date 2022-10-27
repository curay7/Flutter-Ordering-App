import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';
import 'components/intro_body.dart';
import 'components/intro_header.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: cPrimaryColor.withOpacity(0.13),
          child: Center(
              child: Column(
            children: <Widget>[
              IntroHeader(),
              IntroBody(
                onPressCustom: () {
                  Get.toNamed("/home");
                },
              )
            ],
          )),
        ),
      ),
    );
  }
}

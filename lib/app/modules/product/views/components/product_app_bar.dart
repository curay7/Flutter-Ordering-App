import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/custom_icon_btn.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CustomIconBtn(
              widgetInsert: Icon(Icons.arrow_back_ios),
              iconColor: Colors.black,
              iconSize: 40,
              cfunction: () {
                Get.toNamed("/home");
              },
            ),
            CustomIconBtn(
              widgetInsert: Icon(Icons.favorite_outline),
              iconColor: cPrimaryColor,
              iconSize: 40,
              cfunction: () {},
            )
          ],
        ),
      ),
    );
  }
}

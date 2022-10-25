import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../data/theme.dart';

AppBar customAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      iconSize: 30,
      color: Colors.white,
    ),
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Food",
            style: TextStyle(color: cSecondaryColor, fontSize: 23),
          ),
          TextSpan(
            text: "Delevery",
            style: TextStyle(color: cPrimaryColor, fontSize: 23),
          )
        ],
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/notification.svg"))
    ],
  );
}

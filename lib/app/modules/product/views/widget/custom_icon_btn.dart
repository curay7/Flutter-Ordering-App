import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

class CustomIconBtn extends StatelessWidget {
  final Widget widgetInsert;
  final Color? iconColor;
  final bool? isActive;
  final double iconSize;
  final VoidCallback cfunction;
  const CustomIconBtn({
    Key? key,
    required this.widgetInsert,
    this.iconColor,
    this.isActive,
    required this.iconSize,
    required this.cfunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize,
      height: iconSize,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (isActive == true) ? cPrimaryColor : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: IconButton(
        onPressed: cfunction,
        icon: widgetInsert,
        color: (isActive == true) ? Colors.white : iconColor,
      ),
    );
  }
}

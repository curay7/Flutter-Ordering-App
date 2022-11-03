import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

class CustomCircleBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;
  const CustomCircleBtn({
    Key? key,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: cPrimaryColor,
        borderRadius: BorderRadius.circular(60),
      ),
      child: IconButton(
        onPressed: function,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

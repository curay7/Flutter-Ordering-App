import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';

class CategoryTabItem extends StatelessWidget {
  final String title;
  final VoidCallback pressFunction;
  final bool isActive;

  const CategoryTabItem(
      {required this.title,
      required this.isActive,
      required this.pressFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressFunction,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: (isActive)
                  ? TextStyle(color: cTextColor, fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 12),
            ),
            (isActive)
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    height: 3,
                    width: 22,
                    decoration: BoxDecoration(
                        color: cPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

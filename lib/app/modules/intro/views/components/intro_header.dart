import 'package:flutter/material.dart';

class IntroHeader extends StatelessWidget {
  const IntroHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.only(top: 70),
        height: double.infinity,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 150,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/images 2.png"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

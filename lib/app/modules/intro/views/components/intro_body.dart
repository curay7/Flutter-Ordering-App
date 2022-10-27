import 'package:flutter/material.dart';

class IntroBody extends StatelessWidget {
  final VoidCallback onPressCustom;
  const IntroBody({
    Key? key,
    required this.onPressCustom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Text(
                    "Enjoy",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xFFFF961F).withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Your Food",
                    style: TextStyle(
                        fontSize: 35,
                        color: Color(0xFFFF961F).withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              margin: EdgeInsets.only(top: 70),
              child: ElevatedButton(
                onPressed: onPressCustom,
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 0.5,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFFD3131).withOpacity(0.60),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

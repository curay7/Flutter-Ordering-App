import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscountSection extends StatelessWidget {
  const DiscountSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Offers & Discount",
          style: TextStyle(fontWeight: FontWeight.bold, color: cTextColor),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: double.infinity,
          height: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF961F).withOpacity(0.7),
                  cPrimaryColor.withOpacity(0.4)
                ],
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                ),
                Expanded(
                    child: RichText(
                        text: TextSpan(children: [
                  TextSpan(
                      text: "Get Discount of \n",
                      style: TextStyle(fontSize: 17)),
                  TextSpan(text: "30% \n", style: TextStyle(fontSize: 43)),
                  TextSpan(
                      text:
                          "at MacDonalds' on your first orde & Instant cashback \n",
                      style: TextStyle(fontSize: 10)),
                ], style: TextStyle(color: Colors.white))))
              ],
            ),
          ),
        )
      ],
    );
  }
}

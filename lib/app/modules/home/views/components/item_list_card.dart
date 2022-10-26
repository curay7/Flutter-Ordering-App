import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final VoidCallback pressItemCard;
  const ItemCard({
    Key? key,
    required this.title,
    required this.shopName,
    required this.svgSrc,
    required this.pressItemCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(15, 20, 5, 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFB0CCE1).withOpacity(0.32))
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: pressItemCard,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(25),
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      color: cPrimaryColor.withOpacity(0.13),
                      shape: BoxShape.circle),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.10,
                  ),
                ),
                Text(title),
                SizedBox(
                  height: 10,
                ),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

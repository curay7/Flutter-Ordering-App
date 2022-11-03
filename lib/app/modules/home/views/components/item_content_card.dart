import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemContentCard extends StatelessWidget {
  final String title, itemPrice, svgSrc;
  final VoidCallback pressItemCard;
  const ItemContentCard({
    Key? key,
    required this.title,
    required this.itemPrice,
    required this.svgSrc,
    required this.pressItemCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 20, 5, 20),
          width: size.width * 0.40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Color(0xFFB0CCE1).withOpacity(0.22))
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: pressItemCard,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image(
                    height: size.width * 0.40,
                    fit: BoxFit.contain,
                    image: AssetImage(svgSrc),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        color: cTextColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(
                        fontSize: 12,
                        color: cTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: cPrimaryColor.withOpacity(0.50), shape: BoxShape.circle),
            child: IconButton(
              iconSize: 15,
              color: Colors.white,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
              tooltip: 'Add to Cart',
              onPressed: () {},
            ),
          ),
          right: 0,
          left: 130,
          bottom: 0,
        ),
      ],
    );
  }
}

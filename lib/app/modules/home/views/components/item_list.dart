import 'package:flutter/material.dart';

import 'item_list_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Burger & Beer",
            shopName: "MacDonalds's ",
            svgSrc: "assets/icons/burger_beer.svg",
            pressItemCard: () {},
          ),
          ItemCard(
            title: "Japanese & Ramen",
            shopName: "AI",
            svgSrc: "assets/icons/chinese_noodles.svg",
            pressItemCard: () {},
          ),
          ItemCard(
            title: "Burger & Beer",
            shopName: "MacDonalds's ",
            svgSrc: "assets/icons/burger_beer.svg",
            pressItemCard: () {},
          )
        ],
      ),
    );
  }
}

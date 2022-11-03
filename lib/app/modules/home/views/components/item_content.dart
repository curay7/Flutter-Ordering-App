import 'package:f3ordering/app/modules/home/views/components/item_content_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemContent extends StatelessWidget {
  const ItemContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/images2.png",
            ),
          ],
        ),
        Row(
          children: [
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
          ],
        ),
        Row(
          children: [
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
          ],
        ),
        Row(
          children: [
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
            ItemContentCard(
              title: "TEST 1",
              itemPrice: "₱100",
              pressItemCard: () {
                Get.toNamed("/product");
              },
              svgSrc: "assets/images/burgerimage.png",
            ),
          ],
        ),
      ],
    );
  }
}

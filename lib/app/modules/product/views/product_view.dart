import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import 'components/product_app_bar.dart';
import 'components/product_body.dart';
import 'components/product_bottom.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: const Color(0xFFE5E5E5).withOpacity(0.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            CustomAppBar(),
            CustomProductBody(),
            ProductBottom()
          ],
        ),
      )),
    );
  }
}

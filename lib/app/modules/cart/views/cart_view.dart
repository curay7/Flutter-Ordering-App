import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import 'components/cart_header.dart';
import 'components/cart_list.dart';
import 'components/cart_info.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  get cPrimaryColor => null;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [CartHeader(), CartList(size: size), CartInfo(size: size)],
      ),
    );
  }
}

import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'components/category_tab.dart';
import 'components/discount_card.dart';
import 'components/item_content.dart';
import 'components/item_content_card.dart';
import 'components/item_list.dart';
import 'components/search_components.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_bottom_navigation_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      body: _body(context),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

_body(context) {
  return Column(
    children: <Widget>[
      SearchComponents(
        onChanged: ((value) {}),
      ),
      const CategoryTab(),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [ItemList(), DiscountSection(), ItemContent()],
          ),
        ),
      )
    ],
  );
}

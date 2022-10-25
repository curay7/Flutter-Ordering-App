import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'components/category_tab.dart';
import 'components/search_components.dart';
import 'widgets/custom_app_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar(context), body: _body());
  }
}

_body() {
  return Column(
    children: <Widget>[
      SearchComponents(
        onChanged: ((value) {}),
      ),
      CategoryTab()
    ],
  );
}

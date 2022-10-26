import 'package:f3ordering/app/modules/home/views/components/category_tab_item.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryTabItem(
            title: "Combo Meal",
            pressFunction: () {},
            isActive: true,
          ),
          CategoryTabItem(
            title: "Chicken",
            pressFunction: () {},
            isActive: false,
          ),
          CategoryTabItem(
            title: "Burger",
            pressFunction: () {},
            isActive: false,
          ),
          CategoryTabItem(
            title: "Beverages",
            pressFunction: () {
              print("Beverages");
            },
            isActive: false,
          ),
          CategoryTabItem(
            title: "Soft Drink",
            pressFunction: () {},
            isActive: false,
          ),
        ],
      ),
    );
  }
}

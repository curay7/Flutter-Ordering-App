import 'package:f3ordering/app/data/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchComponents extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchComponents({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: cSecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: SvgPicture.asset("assets/icons/search.svg"),
            hintText: "Search Here",
            hintStyle: TextStyle(color: cSecondaryColor)),
      ),
    );
  }
}

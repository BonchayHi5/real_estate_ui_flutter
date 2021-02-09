import 'package:flutter/material.dart';
import 'package:real_esate_ui/all_export.dart';
import 'package:real_esate_ui/ui/widget/house_list.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 8,
        left: kDefaultPadding,
        right: kDefaultPadding,
      ),
      child: Column(
        children: [
          SearchField(),
          HouseList(),
        ],
      ),
    );
  }
}

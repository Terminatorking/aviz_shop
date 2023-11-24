import 'package:flutter/material.dart';

import '../constants/colors.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: [
        Tab(
          child: Text(
            "مشخصات",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
        ),
        Tab(
          child: Text(
            "قیمت",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
        ),
        Tab(
          child: Text(
            "امکانات",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
        ),
        Tab(
          child: Text(
            "توضیحات",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
        ),
      ],
    );
  }
}

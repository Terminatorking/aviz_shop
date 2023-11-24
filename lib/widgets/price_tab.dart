import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/aviz_info.dart';

class PriceTab extends StatelessWidget {
  const PriceTab({
    super.key,
    required this.widget,
  });

  final AvizInfo widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 20),
          width: widget.size.width,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(
              width: 2,
              color: Colors.grey.shade200,
            ),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "قیمت هر متر",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "۴۶٬۴۶۰٬۰۰۰",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                     "قیمت کل:",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "۴۶٬۴۶۰٬۰۰۰",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(red),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                        "assets/images/message.png"),
                  ),
                  Text(
                    "گفت و گو",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(red),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                        "assets/images/message.png"),
                  ),
                  Text(
                    "اطلاعات تماس",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../screens/aviz_info.dart';

class PropertiesTab extends StatelessWidget {
  const PropertiesTab({
    super.key,
    required this.widget,
  });

  final AvizInfo widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/clipboard.png",
                  ),
                ),
                const Text(
                  "ویژگی ها",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: widget.size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              border: Border.all(
                color: Colors.grey.shade200,
                width: 2,
              ),
            ),
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "سند",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          color: greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "تک برگ",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          color: greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "جهت ساختمان",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          color: greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "شمالی",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          color: greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/pen.png",
                  ),
                ),
                const Text(
                  "امکانات",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: widget.size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade200,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "آسانسور",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "پارکینگ",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "انباری",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "بالکن",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "پنت هاوس",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "جنس کف سرامیک",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "سرویس بهداشتی ایرانی و فرنگی",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      color: greyText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(red),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset("assets/images/message.png"),
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
                  backgroundColor: MaterialStateProperty.all(red),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset("assets/images/message.png"),
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
      ),
    );
  }
}

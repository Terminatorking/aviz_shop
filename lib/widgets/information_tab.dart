import 'package:avizshop/screens/aviz_info.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class InformationTab extends StatelessWidget {
  const InformationTab({
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
            vertical: 20,
            horizontal: 15,
          ),
          width: widget.size.width,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
            border: Border.all(
              color: Colors.grey.shade200,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "متراژ",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: greyText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "500",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "اتاق",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: greyText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "6",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "طبقه",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: greyText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "500",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "ساخت",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: greyText,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "1402",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: [
              Image.asset(
                "assets/images/map.png",
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "موقعیت مکانی",
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
          width: widget.size.width,
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/map2.png",
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
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
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:avizshop/screens/aviz_info.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HotestAviz extends StatelessWidget {
  const HotestAviz({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 340,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AvizInfo(
                    size: size,
                  );
                }),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.15),
                  ),
                ],
              ),
              width: 230,
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 8,
                top: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/house.png",
                    width: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8, top: 15),
                    child: Text(
                      "ویلا 200 متری ",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8, top: 15, bottom: 25),
                    child: Text(
                      "ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: greyText,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Text(
                          "قیمت:",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade100,
                        margin: const EdgeInsets.only(left: 8),
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          "۲۵٬۶۸۳٬۰۰۰٬۰۰۰",
                          style: TextStyle(
                              fontSize: 14,
                              color: red,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam"),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}

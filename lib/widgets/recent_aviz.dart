import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/screens/aviz_info.dart';
import 'package:flutter/material.dart';

class RecentAviz extends StatelessWidget {
  const RecentAviz({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
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
        width: size.width,
        height: 180,
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 10,
              color: Colors.black.withOpacity(0.15),
            ),
          ],
        ),
        margin: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "ویلا 200 متری",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: greyText,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
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
                      const SizedBox(
                        width: 50,
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
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(15),
              width: 120,
              height: 100,
              decoration: BoxDecoration(
                color: white,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/house.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

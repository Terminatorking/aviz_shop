import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/widgets/user_container.dart';
import 'package:flutter/material.dart';

import '../widgets/c_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> texts = [
      "آگهی های من",
      "پرداخت های من",
      "بازدید های اخیر",
      "ذخیره شده ها",
      "تنظیمات",
      "پشتیبانی و قوانین",
      "درباره آویز",
    ];
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/tags.png",
                  width: 50,
                ),
                Text(
                  "آویز من",
                  style: TextStyle(
                    color: red,
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: size.width,
              height: 50,
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 15,
              ),
              child: TextField(
                style: const TextStyle(
                  fontFamily: "shabnam",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade400,
                  ),
                  hintText: "جست و جو",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: red,
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontFamily: "shabnam",
                    fontWeight: FontWeight.bold,
                    color: greyText,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Row(
                children: [
                  Image.asset("assets/images/profile.png"),
                  const Text(
                    "حساب کاربری ",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            UserContainer(size: size),
            const SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey.shade200,
              thickness: 2,
              indent: 15,
              endIndent: 15,
            ),
            const SizedBox(
              height: 30,
            ),
            for (var i = 1; i <= 7; i++)
              Cwidget(
                size: size,
                text: texts[i - 1],
                i: i,
              ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

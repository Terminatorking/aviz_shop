import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/widgets/a_widget.dart';
import 'package:avizshop/widgets/hotest_aviz.dart';
import 'package:flutter/material.dart';

import '../widgets/recent_aviz.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  "آویز",
                  style: TextStyle(
                    color: red,
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Awidget(
              text: "اویز های داغ",
            ),
            const SizedBox(
              height: 30,
            ),
            HotestAviz(size: size),
            const SizedBox(
              height: 30,
            ),
            const Awidget(text: "اویز های اخیر"),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: size.width,
              height: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return RecentAviz(size: size);
                },
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

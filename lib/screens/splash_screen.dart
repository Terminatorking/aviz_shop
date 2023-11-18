import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/widgets/splash_screen_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          SizedBox(
            width: size.width,
            height: size.height / 1.4,
            child: SplashScreenPageView(controller: controller),
          ),
          SmoothPageIndicator(
            controller: controller, // PageController
            count: 3,
            effect: ScaleEffect(
              dotColor: Colors.grey.shade300,
              activeDotColor: red,
            ), // your preferred effect
          ),
          const Spacer(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(red),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Text(
                      "ثبت نام",
                      style: TextStyle(
                        color: white,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      side: MaterialStateProperty.all(
                        BorderSide(color: red, width: 2),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    child: Text(
                      "ورود",
                      style: TextStyle(
                        color: red,
                        fontFamily: "shabnam",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

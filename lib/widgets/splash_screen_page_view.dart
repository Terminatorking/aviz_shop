import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/widgets/tag_widget.dart';
import 'package:flutter/material.dart';

class SplashScreenPageView extends StatelessWidget {
  const SplashScreenPageView({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 110,
              ),
              Image.asset("assets/images/home.png"),
              const SizedBox(
                height: 50,
              ),
              const Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "اینجا محل ",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TagWidget(),
                     SizedBox(
                      width: 10,
                    ),
                     Text(
                      "اگهی شماست",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 14,
                    color: greyText,
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      controller: controller,
      itemCount: 3,
    );
  }
}

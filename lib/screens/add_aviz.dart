// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:avizshop/constants/colors.dart';

class AddAviz extends StatelessWidget {
  const AddAviz({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> texts = [
      "اجاره مسکونی",
      "فروش مسکونی",
      "فروش دفاتر اداری و تجاری",
      "اجاره دفاتر اداری و تجاری",
      "اجاره کوتاه مدت",
      "پروژه های ساخت و ساز",
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "دسته بندی آویز",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "shabnam",
                color: red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (int i = 0; i < 6; i++)
              Bwidget(
                size: size,
                text: texts[i],
              ),
          ],
        ),
      ),
    );
  }
}

class Bwidget extends StatelessWidget {
  const Bwidget({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 15,
      ),
      width: size.width,
      height: 50,
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: 2,
          color: const Color(0xfff2f4f7),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "shabnam",
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.arrow_forward,
              color: red,
            ),
          )
        ],
      ),
    );
  }
}

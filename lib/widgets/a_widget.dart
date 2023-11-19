import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

class Awidget extends StatelessWidget {
  const Awidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, right: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "shabnam",
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Text(
            "مشاهده همه",
            style: TextStyle(
              fontSize: 14,
              fontFamily: "shabnam",
              fontWeight: FontWeight.bold,
              color: greyText,
            ),
          ),
        )
      ],
    );
  }
}

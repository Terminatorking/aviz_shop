import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

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
              Icons.arrow_forward_ios,
              color: red,
            ),
          )
        ],
      ),
    );
  }
}

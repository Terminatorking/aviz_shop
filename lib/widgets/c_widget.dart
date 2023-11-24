import 'package:flutter/material.dart';

class Cwidget extends StatelessWidget {
  const Cwidget({
    super.key,
    required this.size,
    required this.text,
    required this.i,
  });

  final Size size;
  final String text;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        border: Border.all(
          width: 2,
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/images/icon ($i).png",
            ),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "shabnam",
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grey,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Image.asset("assets/images/tags.png"),
          const SizedBox(
            width: 10,
          ),
          Text(
            "آویز",
            style: TextStyle(
              fontFamily: "shabnam",
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: red,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

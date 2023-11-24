import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ExplainTab extends StatelessWidget {
  const ExplainTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 40,
          ),
          child: Text(
            "ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.",
            style: TextStyle(
              fontFamily: "shabnam",
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: greyText,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(red),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/images/message.png"),
                  ),
                  Text(
                    "گفت و گو",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(red),
              ),
              onPressed: () {},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset("assets/images/message.png"),
                  ),
                  Text(
                    "اطلاعات تماس",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:avizshop/widgets/b_widget.dart';
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

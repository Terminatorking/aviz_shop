import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/widgets/tag_widget.dart';
import 'package:flutter/material.dart';

class EntranceScreen extends StatelessWidget {
  const EntranceScreen({
    super.key,
    required this.isEntrance,
  });
  final bool isEntrance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 20),
                child: Row(
                  children: [
                    Text(
                      isEntrance ? "ورود به " : "خوش امدید به ",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "shabnam",
                      ),
                    ),
                    const TagWidget(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15, bottom: 30),
                child: Text(
                  isEntrance
                      ? "خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!"
                      : "این فوق العادست که آویزو برای آگهی هات انتخاب کردی!",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "shabnam",
                    color: greyText,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: size.width,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.05),
                    hintText: isEntrance ? "شماره تلفن" : "نام و نام خانوادگی",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey.shade400,
                      fontFamily: "shabnam",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                visible: !isEntrance,
                child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  width: size.width,
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.05),
                      hintText: "شماره تلفن",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey.shade400,
                        fontFamily: "shabnam",
                      ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: size.width,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(red),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "مرحله بعد",
                        style: TextStyle(
                          color: white,
                          fontFamily: "shabnam",
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: white,
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isEntrance
                        ? "تا حالا ثبت نام نکردید؟"
                        : "قبلا ثبت نام نکردید؟",
                    style: TextStyle(
                      color: greyText,
                      fontSize: 16,
                      fontFamily: "shabnam",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      isEntrance ? "ثبت نام" : "ورود",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "shabnam",
                        color: red,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

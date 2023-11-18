import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

class ConfirmPhoneNumber extends StatelessWidget {
  const ConfirmPhoneNumber({super.key, required this.isEntrance});
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
              const Padding(
                padding: EdgeInsets.only(top: 90, right: 15),
                child: Text(
                  "تایید شماره موبایل",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 15, bottom: 50),
                child: Text(
                  "کد پیامک شده را وارد کنید",
                  style: TextStyle(
                    fontFamily: "shabnam",
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: greyText,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CodeTextField(size: size),
                  CodeTextField(size: size),
                  CodeTextField(size: size),
                  CodeTextField(size: size),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "00:45",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " ارسال مجدد کد ",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "shabnam",
                      fontWeight: FontWeight.bold,
                      color: greyText,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width: size.width,
                height: 50,
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(red),
                  ),
                  child: Text(
                    isEntrance ? "تایید ورود" : "تایید ثبت نام",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
             const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width / 5,
      height: 50,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withOpacity(0.05),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}

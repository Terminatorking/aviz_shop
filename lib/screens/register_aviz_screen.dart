import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

class RegisterAvizScreen extends StatefulWidget {
  const RegisterAvizScreen({super.key, required this.size});
  final Size size;

  @override
  State<RegisterAvizScreen> createState() => _RegisterAvizScreenState();
}

class _RegisterAvizScreenState extends State<RegisterAvizScreen> {
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: white,
            title: Text(
              "ثبت اویز",
              style: TextStyle(
                fontFamily: "shabnam",
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: red,
              ),
            ),
          ),
          backgroundColor: white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/category.png"),
                      ),
                      const Text(
                        "انتخاب دسته بندی",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "shabnam",
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            " دسته بندی",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam",
                              color: greyText,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey.shade200,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Row(
                              children: [
                                Text(
                                  "فروش اپارتمان",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.arrow_downward),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "محدوده ملک",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: "shabnam",
                                color: greyText,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade100),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "خیابان صیاد شیرازی",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "shabnam",
                                      color: greyText),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/clipboard.png"),
                      ),
                      const Text(
                        "ویژگی ها",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "shabnam",
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "ویژگی ها",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam",
                              color: greyText,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  "350",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Image.asset(
                                  "assets/images/updown.png",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "تعداد اتاق ها",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam",
                              color: greyText,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  "6",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Image.asset(
                                  "assets/images/updown.png",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "طبقه",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam",
                              color: greyText,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Image.asset(
                                  "assets/images/updown.png",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "سال ساخت",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam",
                              color: greyText,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          color: Colors.grey.shade100,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Text(
                                  "1402",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Image.asset(
                                  "assets/images/updown.png",
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/images/category.png"),
                      ),
                      const Text(
                        "انتخاب دسته بندی",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "shabnam",
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "اسانسور",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "پارکینگ",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "انباری",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/map.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "موقعیت مکانی",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.",
                    style: TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: greyText,
                    ),
                  ),
                ),
                Container(
                  width: widget.size.width,
                  height: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/map2.png",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "موقعیت دقیق نقشه نمایش داده شود؟",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/camera.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "تصویر",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: widget.size.width,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "لطفا تصویر آویز خود را بارگذاری کنید",
                          style: TextStyle(
                              color: greyText,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "shabnam"),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 100),
                          width: widget.size.width,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(red)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/images/document-upload.png",
                                  ),
                                ),
                                Text(
                                  "انتخاب تصویر",
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "shabnam",
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/pen.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "عنوان اویز",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: widget.size.width,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    style: const TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: red,
                          width: 2,
                        ),
                      ),
                      hintText: "عنوان آویز را وارد کنید",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: greyText,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/clipboard-text.png",
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "توصیحات",
                        style: TextStyle(
                          fontFamily: "shabnam",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: widget.size.width,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    maxLines: 5,
                    style: const TextStyle(
                      fontFamily: "shabnam",
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: Colors.grey.shade200,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: red,
                          width: 2,
                        ),
                      ),
                      hintText: "توضیحات را وارد کنید",
                      hintStyle: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: greyText,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                         "فعال کردن گفت و گو",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: widget.size.width,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                        "فعال کردن امکان تماس",
                          style: TextStyle(
                            fontFamily: "shabnam",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Switch(
                          activeColor: red,
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: MaterialStateProperty.all(white),
                          value: isChange,
                          onChanged: (b) {
                            setState(
                              () {
                                isChange = !isChange;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  width: widget.size.width,
                  height: 50,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.all(red),
                    ),
                    onPressed: () {},
                    child: Text(
                      "ثبت اگهی",
                      style: TextStyle(
                        fontFamily: "shabnam",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

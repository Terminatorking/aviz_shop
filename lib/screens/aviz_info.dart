import 'package:avizshop/constants/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/explain_tab.dart';
import '../widgets/information_tab.dart';
import '../widgets/price_tab.dart';
import '../widgets/properties_tab.dart';
import '../widgets/tabs_widget.dart';

class AvizInfo extends StatefulWidget {
  const AvizInfo({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  State<AvizInfo> createState() => _AvizInfoState();
}

class _AvizInfoState extends State<AvizInfo>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: white,
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/information.png"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/share.png"),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/frame.png"),
                ),
              ),
            ],
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
              ),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  width: widget.size.width,
                  height: widget.size.height / 4.4,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/room.png"),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        color: Colors.grey.shade100,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 4,
                          ),
                          child: Text(
                            "اپارتمان",
                            style: TextStyle(
                              color: red,
                              fontSize: 16,
                              fontFamily: "shabnam",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "16 دقیقه پیش در گرگان",
                        style: TextStyle(
                          color: greyText,
                          fontSize: 16,
                          fontFamily: "shabnam",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Text(
                    "آپارتمان ۵۰۰ متری در صیاد شیرازی",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "shabnam",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey.shade200,
                  indent: 15,
                  endIndent: 15,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  width: widget.size.width,
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
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 15,
                        ),
                        child: Text(
                          "هشدار های قبل از معامله!",
                          style: TextStyle(
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
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TabsWidget(tabController: tabController),
                SizedBox(
                  width: widget.size.width,
                  height: widget.size.height / 1.8,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      InformationTab(widget: widget),
                      PriceTab(widget: widget),
                      PropertiesTab(widget: widget),
                      const ExplainTab(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

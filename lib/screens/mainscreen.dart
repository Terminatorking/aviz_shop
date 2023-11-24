import 'package:avizshop/constants/colors.dart';
import 'package:avizshop/screens/add_aviz.dart';
import 'package:avizshop/screens/home_screen.dart';
import 'package:avizshop/screens/profile_screen.dart';
import 'package:avizshop/screens/search_screen.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: white,
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Colors.red,
          elevation: 0,
          currentIndex: selectedIndex,
          selectedLabelStyle: const TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: "shabnam",
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          selectedItemColor: red,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            setState(
              () {
                selectedIndex = index;
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: selectedIndex == 0 ? red : Colors.grey.shade400,
              ),
              label: 'آویز اگهی ها',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: selectedIndex == 1 ? red : Colors.grey.shade400,
              ),
              label: 'جست و جو',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: selectedIndex == 2 ? red : Colors.grey.shade400,
              ),
              label: 'افزودن آویز',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: selectedIndex == 3 ? red : Colors.grey.shade400,
              ),
              label: 'آویز من',
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: selectedIndex,
            children: const [
              HomeScreen(),
              SearchScreen(),
              AddAviz(),
              ProfileScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

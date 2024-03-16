import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';
import 'package:football_app/features/home/ui/home_view.dart';
import 'package:football_app/features/home/ui/setting.dart';
import 'package:football_app/features/home/ui/widget/custom_text_icon.dart';

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainState();
}

class _MainState extends State<MainBody> {
  int currentIndex = 0;
  List screen = [
    const HomeView(),
    const Setting(),
    const HomeView(),
    const HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        width: size.width,
        height: 70,
        decoration: BoxDecoration(
          color: kBackgrountcolor,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.grey.shade200,
            )
          ],
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconAndTextBottomNavigator(
              title: "Home",
              icon: Icons.home,
              isActive: currentIndex == 0,
              ontap: () {
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            IconAndTextBottomNavigator(
              title: "Calender",
              icon: Icons.calendar_month,
              isActive: currentIndex == 1,
              ontap: () {
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            IconAndTextBottomNavigator(
              title: "Standing",
              icon: Icons.chat_rounded,
              isActive: currentIndex == 2,
              ontap: () {
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            IconAndTextBottomNavigator(
              title: "Account",
              icon: Icons.account_circle_outlined,
              isActive: currentIndex == 3,
              ontap: () {
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

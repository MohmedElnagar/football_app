import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';

class IconAndTextBottomNavigator extends StatelessWidget {
  const IconAndTextBottomNavigator({
    super.key,
    required this.title,
    required this.isActive,
    required this.ontap,
    required this.icon,
  });
  final String title;
  final bool isActive;
  final Function() ontap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: isActive ? kPrimarycolor : kBackgrountcolor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(children: [
          Icon(
            icon,
            color: isActive ? Colors.white : Colors.grey,
            size: 18,
          ),
          isActive
              ? Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                )
              : const SizedBox(),
        ]),
      ),
    );
  }
}

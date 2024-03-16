import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';

class CustomTextAppBar extends StatelessWidget {
  const CustomTextAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        Text(
          "S",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Icon(
          Icons.sports_soccer,
          color: kPrimarycolor,
        ),
        Text(
          "ccer",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          "  Nerds",
          style: TextStyle(fontWeight: FontWeight.bold, color: kPrimarycolor),
        ),
        Spacer()
      ],
    );
  }
}

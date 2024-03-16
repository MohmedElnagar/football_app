import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';

class CustomResult extends StatelessWidget {
  const CustomResult(
      {super.key,
      required this.timer,
      required this.score1,
      required this.score2});
  final String timer, score1, score2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white)),
          child: Center(
            child: Text(
              timer,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: score1,
            style: const TextStyle(color: Colors.white, fontSize: 36),
          ),
          TextSpan(
            text: score2,
            style: const TextStyle(color: kPrimarycolor, fontSize: 36),
          ),
        ]))
      ],
    );
  }
}

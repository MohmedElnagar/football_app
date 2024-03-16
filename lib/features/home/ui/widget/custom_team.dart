import 'package:flutter/material.dart';

class Customteam extends StatelessWidget {
  const Customteam(
      {super.key,
      required this.image,
      required this.teamname,
      required this.awayOraway});
  final String image, teamname, awayOraway;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 80,
          width: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          teamname,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          awayOraway,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

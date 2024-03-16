import 'package:flutter/material.dart';

class CustomTimeMatch extends StatelessWidget {
  const CustomTimeMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Arsenal",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/arsenal.png",
                    height: 50,
                  ),
                  const Text(
                    "home",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "4 : 30",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  Text(
                    "19/3",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/chelsea.png",
                    height: 50,
                  ),
                  const Text(
                    "away",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16),
                  ),
                ],
              ),
              const Text(
                "Chelsea",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 30,
          endIndent: 30,
          height: 15,
          color: Colors.grey,
          thickness: 2,
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

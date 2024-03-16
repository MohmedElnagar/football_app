import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';

class CustomTextLiveMatch extends StatelessWidget {
  const CustomTextLiveMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            "Live Match",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: kBackgrountcolor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    spreadRadius: 2,
                    blurRadius: 20,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Row(children: [
              Image.asset(
                "assets/images/pl.png",
                height: 35,
                width: 35,
              ),
              const SizedBox(
                width: 3,
              ),
              const Text(
                "Premier League",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 3,
              ),
              const Icon(
                CupertinoIcons.chevron_down,
                size: 18,
              )
            ]),
          ),
        ],
      ),
    );
  }
}

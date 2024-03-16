import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';
import 'package:football_app/features/home/ui/widget/CustomResult.dart';
import 'package:football_app/features/home/ui/widget/custom_team.dart';

class CustomCardResultMatch extends StatelessWidget {
  const CustomCardResultMatch({
    super.key,
    required this.logteam1,
    required this.logteam2,
    required this.st,
    required this.week,
    required this.score1,
    required this.score2,
    required this.timer,
    required this.backGround,
    required this.nameteam1,
    required this.nameteam2,
    required this.home,
    required this.away,
  });
  final String logteam1,
      logteam2,
      nameteam1,
      nameteam2,
      st,
      week,
      score1,
      score2,
      timer,
      home,
      away,
      backGround;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.all(15),
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kBoxcolor,
          image: DecorationImage(
              // alignment: Alignment.bottomLeft,
              fit: BoxFit.contain,
              opacity: .3,
              image: AssetImage(backGround))),
      child: Column(
        children: [
          Text(
            st,
            style: const TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            week,
            style: const TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customteam(
                awayOraway: home,
                image: logteam1,
                teamname: nameteam1,
              ),
              const SizedBox(
                width: 40,
              ),
              CustomResult(
                score1: score1,
                score2: score2,
                timer: timer,
              ),
              const SizedBox(
                width: 40,
              ),
              Customteam(
                awayOraway: away,
                image: logteam2,
                teamname: nameteam2,
              ),
            ],
          )
        ],
      ),
    );
  }
}

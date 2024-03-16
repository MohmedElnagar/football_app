import 'package:flutter/material.dart';
import 'package:football_app/core/constans/constans.dart';
import 'package:football_app/features/home/ui/widget/CustomCardResultMatch.dart';
import 'package:football_app/features/home/ui/widget/custom_text_live_match.dart';
import 'package:football_app/features/home/ui/widget/custom_time_match.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomTextLiveMatch(),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 250,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                primary: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomCardResultMatch(
                    home: "home",
                    away: "away",
                    backGround: "assets/images/pl.png",
                    logteam1: "assets/images/chelsea.png",
                    logteam2: "assets/images/liverpool.png",
                    nameteam1: "chelsea",
                    nameteam2: "liverpool",
                    score1: "0 : ",
                    score2: "4",
                    st: "St stugem park",
                    timer: "80",
                    week: "week 13",
                  ),
                  CustomCardResultMatch(
                    home: "away",
                    away: "Home",
                    backGround: "assets/images/cl.png",
                    logteam1: "assets/images/west_ham.png",
                    logteam2: "assets/images/tottenham.png",
                    nameteam1: "west_ham",
                    nameteam2: "tottenham",
                    score1: "2 : ",
                    score2: "1",
                    st: "St stugem park",
                    timer: "88",
                    week: "week 13",
                  ),
                  CustomCardResultMatch(
                    home: "away",
                    away: "Home",
                    backGround: "assets/images/pl.png",
                    logteam1: "assets/images/arsenal.png",
                    logteam2: "assets/images/man_united.png",
                    nameteam1: "west_ham",
                    nameteam2: "man_united",
                    score1: "2 : ",
                    score2: "4",
                    st: "St stugem park",
                    timer: "55",
                    week: "week 13",
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                const Text(
                  "Up-coming mathes",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: kPrimarycolor),
                    child: const Text(
                      "See All",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          const Divider(
            indent: 30,
            endIndent: 30,
            height: 20,
            color: kPrimarycolor,
            thickness: 2,
          ),
          const CustomTimeMatch(),
          const CustomTimeMatch(),
          const CustomTimeMatch(),
          const CustomTimeMatch(),
          const CustomTimeMatch(),
        ],
      ),
    );
  }
}

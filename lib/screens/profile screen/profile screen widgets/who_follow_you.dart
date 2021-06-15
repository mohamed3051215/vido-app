import 'package:flutter/material.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/user_card.dart';

import '../../../colors.dart';

class WhoFollowsYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Who follows you",
              style: TextStyle(
                  fontFamily: "Quicdsand",
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "18,207 users",
              style: TextStyle(fontFamily: "Quicsand", fontSize: 15),
            )
          ]),
          SizedBox(height: 5),
          Image.asset("assets/images/divider.png"),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                    SizedBox(
                      width: 22,
                    ),
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                    SizedBox(
                      width: 22,
                    ),
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                    SizedBox(
                      width: 22,
                    ),
                    UserCard(
                        image: "assets/images/community user 1.png",
                        name: "Authorldso"),
                  ],
                ),
              ],
            ),
          ),
          InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See all of your followers",
                    style: TextStyle(
                        color: blackPink,
                        fontFamily: "Quicsand",
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

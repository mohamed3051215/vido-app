import 'package:flutter/material.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/video_card.dart';

import '../../../colors.dart';

class Favorites extends StatelessWidget {
  const Favorites({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Favorites",
              style: TextStyle(
                  fontFamily: "Quicdsand",
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "6 videos",
              style: TextStyle(fontFamily: "Quicsand", fontSize: 15),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/divider.png"),
          Row(
            children: [
              VideoCard(
                image: "assets/images/favorite image 1.png",
                title: "At Last, The Secret",
                timeAgo: "Posted 23w ago",
                avatar: "assets/images/person 2.png",
                name: "ReporterMotion",
                isFavorite: true,
              ),
              SizedBox(
                width: 10,
              ),
              VideoCard(
                image: "assets/images/favorite image 2.png",
                title: "Easy Method",
                timeAgo: "Posted 1Y ago",
                avatar: "assets/images/person 2.png",
                name: "ReporterMotion",
                isFavorite: true,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              VideoCard(
                image: "assets/images/favorite image 3.png",
                title: "Reality",
                timeAgo: "Posted 23w ago",
                avatar: "assets/images/person 2.png",
                name: "ReporterMotion",
                isFavorite: true,
              ),
              SizedBox(
                width: 10,
              ),
              VideoCard(
                image: "assets/images/favorite image 4.png",
                title: "Don’t Fall",
                timeAgo: "Posted 2d ago",
                avatar: "assets/images/person 2.png",
                name: "ReporterMotion",
                isFavorite: true,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "See all favorites",
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

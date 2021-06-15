import 'package:flutter/material.dart';
import 'package:vido/colors.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/video_card.dart';

class RecentWidget extends StatelessWidget {
  const RecentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recent",
                style: TextStyle(
                    fontFamily: "Quicdsand",
                    fontSize: 35,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  VideoCard(
                    avatar: "assets/images/person 2.png",
                    image: "assets/images/vid image 2.JPG",
                    name: "ReporterMotion",
                    timeAgo: "Posted 1h ago",
                    title: "My Biggest",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VideoCard(
                    avatar: "assets/images/person 3.png",
                    image: "assets/images/vid image 3.JPG",
                    name: "Authorldso",
                    timeAgo: "Posted 3 days ago",
                    title: "More Than Money",
                  ),
                ],
              ),
              Row(
                children: [
                  VideoCard(
                    avatar: "assets/images/person 4.png",
                    image: "assets/images/vid image 4.JPG",
                    name: "Imbrona",
                    timeAgo: "Posted 3 days ago",
                    title: "So Fascinating",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VideoCard(
                    avatar: "assets/images/person 5.png",
                    image: "assets/images/vid image 5.JPG",
                    name: "BuddieWisdom",
                    timeAgo: "Posted 1h ago",
                    title: "Shake It Up",
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "See all recent videos",
                      style: TextStyle(
                          color: blackPink,
                          fontFamily: "Quicsand",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("assets/images/divider.png"),
          ),
          top: 47,
        )
      ],
    );
  }
}

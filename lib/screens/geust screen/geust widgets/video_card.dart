import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/colors.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/icon_circle.dart';

class VideoCard extends StatelessWidget {
  final String image;
  final String title, timeAgo, avatar, name;
  final bool isFavorite;

  const VideoCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.timeAgo,
      required this.avatar,
      required this.name,
      this.isFavorite = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 155,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: 91.61,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "df",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 7),
              Text(
                timeAgo,
                style: TextStyle(fontFamily: "Quicsand"),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatar),
                  ),
                  SizedBox(width: 5),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "f",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              !isFavorite
                  ? IconCircle(
                      icon: SvgPicture.asset(
                        "assets/icons/follow.svg",
                        color: blackPink,
                        width: 20,
                      ),
                    )
                  : IconCircle(
                      icon: SvgPicture.asset(
                        "assets/icons/unfollow.svg",
                        color: blackPink,
                        width: 20,
                      ),
                    ),
              SizedBox(
                width: 10,
              ),
              IconCircle(
                icon: SvgPicture.asset(
                  "assets/icons/heart.svg",
                  color: blackPink,
                  width: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/upload_card.dart';

import '../../../colors.dart';

class YourUploads extends StatelessWidget {
  const YourUploads({
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
              "Your uploads",
              style: TextStyle(
                  fontFamily: "Quicdsand",
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "21 videos",
              style: TextStyle(fontFamily: "Quicsand", fontSize: 15),
            )
          ]),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/images/divider.png"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              UploadCard(
                image: "assets/images/upload image 1.png",
                timeAgo: "Posted 1w ago",
                title: "Achieve",
              ),
              SizedBox(
                width: 10,
              ),
              UploadCard(
                image: "assets/images/upload image 2.png",
                timeAgo: "Posted 15w ago",
                title: "Romantic",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              UploadCard(
                image: "assets/images/upload image 3.png",
                timeAgo: "Posted 22w ago",
                title: "Mistakes",
              ),
              SizedBox(
                width: 10,
              ),
              UploadCard(
                image: "assets/images/upload image 4.png",
                timeAgo: "Posted 1y ago",
                title: "Be Better than Me",
              ),
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
                    "See all uploads",
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vido/colors.dart';

class PickOfTheDay extends StatelessWidget {
  const PickOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 40, 10),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/award.svg",
                color: blackPink,
                width: 20,
              ),
              Text(
                "Pick of the day",
                style: TextStyle(
                    fontFamily: "Quicsand",
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/vid image 1.JPG",
        )
      ]),
      Positioned(
        child: Image.asset("assets/images/divider.png"),
        top: 25,
      )
    ]);
  }
}

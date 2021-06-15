import 'package:flutter/material.dart';

import '../../../colors.dart';

class AboutYou extends StatelessWidget {
  const AboutYou({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: "About you  ",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "OpenSans",
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  children: [
                TextSpan(
                    text: "Edit",
                    style: TextStyle(
                      color: blackPink,
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ))
              ])),
          Text(
            "Hey! I’m Yalisa, a visual artist from Toronto. I love experimenting with reality and texture. If you enjoy my videos, please follow me!! I’ll follow you back :))",
            style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

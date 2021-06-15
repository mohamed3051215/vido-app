import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../colors.dart';

class IntenceWidget extends StatelessWidget {
  const IntenceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Intense",
                  style: TextStyle(
                      fontFamily: "Quicdsand",
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Row(children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/person 1.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Coryhoea",
                    style: TextStyle(
                        fontFamily: "Quicsand",
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 110,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: blackPink, width: 3),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset(
                          "assets/icons/follow.svg",
                          color: blackPink,
                          width: 19,
                        ),
                        Text(
                          " Follow",
                          style: TextStyle(
                              fontFamily: "RobotoMo",
                              fontWeight: FontWeight.w400,
                              color: blackPink,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Text(
                "You’re about to see art in its truest form. This a beautiful way of expressing what is only possible through human ingenuity.",
                style: TextStyle(fontFamily: "", fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Text("23 minutes long, posted 1 hour ago",
                  style: TextStyle(fontFamily: "Quicsand", fontSize: 14)),
              SizedBox(
                height: 35,
              ),
            ]),
      ),
    );
  }
}

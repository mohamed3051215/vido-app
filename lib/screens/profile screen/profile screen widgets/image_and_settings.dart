import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../colors.dart';

class ImageAndSettings extends StatelessWidget {
  const ImageAndSettings({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/big_user.png",
            width: 106,
            height: 106,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 20,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Takermouri",
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      fontSize: 29,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Yalisa Bennett",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Quicsand",
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: blackPink),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 117,
                      height: 36,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/settings.svg",
                            width: 14,
                            color: blackPink,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontFamily: "ed",
                                color: blackPink,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                ),
              ]),
        ],
      ),
    );
  }
}

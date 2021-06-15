import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/icon_circle.dart';

import '../../../colors.dart';

class UserCard extends StatelessWidget {
  final String image, name;

  const UserCard({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              width: 10,
            ),
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
        IconCircle(
            icon: SvgPicture.asset("assets/icons/unfollow.svg",
                width: 18, color: blackPink))
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CommunityText extends StatelessWidget {
  const CommunityText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        "Community",
        style: TextStyle(
            color: Colors.black,
            fontFamily: "OpenSans",
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}

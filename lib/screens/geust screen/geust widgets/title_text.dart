import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Text(
        "The best place for inspirational videos.",
        style: TextStyle(
            fontFamily: "OpenSans", fontSize: 26, fontWeight: FontWeight.w600),
      ),
    );
  }
}

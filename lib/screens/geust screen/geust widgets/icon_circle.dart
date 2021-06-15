import 'package:flutter/material.dart';
import 'package:vido/colors.dart';

class IconCircle extends StatelessWidget {
  final Widget icon;

  const IconCircle({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: blackPink, width: 2),
          shape: BoxShape.circle),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: icon,
        ),
      ),
    );
  }
}

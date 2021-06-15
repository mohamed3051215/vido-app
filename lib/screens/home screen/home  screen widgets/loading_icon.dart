import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
      child: SvgPicture.asset("assets/icons/loading.svg",
          width: 24, color: Colors.grey),
    );
  }
}

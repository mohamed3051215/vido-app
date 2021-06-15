import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/colors.dart';

class CheckWidget extends StatelessWidget {
  final String title;
  final bool isTrue;
  final Function func;

  CheckWidget(
      {Key? key, required this.title, required this.isTrue, required this.func})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => func(),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: isTrue
                    ? SvgPicture.asset(
                        "assets/icons/check.svg",
                        color: blackPink,
                      )
                    : SizedBox(),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 200,
            child: Text(title,
                style: TextStyle(
                    fontFamily: "Quicsand",
                    fontWeight: FontWeight.w500,
                    fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

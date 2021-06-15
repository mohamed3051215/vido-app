import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obs;
  final bool email;
  final bool customGenerate;

  CustomTextField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.obs,
    required this.email,
    required this.customGenerate,
  }) : super(key: key);
  GlobalKey<FormState> _formState = GlobalKey<FormState>();
  var _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  Random _rnd = Random();
  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!customGenerate)
            Text(
              label,
              style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                InkWell(
                  onTap: () {
                    _controller.text = getRandomString(9);
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/reload.svg",
                        width: 12,
                        color: blackPink,
                      ),
                      Text(
                        "Generate secure password",
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            fontSize: 12,
                            letterSpacing: -.2,
                            color: blackPink),
                      ),
                    ],
                  ),
                )
              ],
            ),
          !customGenerate
              ? TextField(
                  controller: _controller,
                  obscureText: obs,
                  decoration: InputDecoration(
                    hintText: hintText,
                    hintStyle: TextStyle(fontFamily: "djs"),
                  ),
                  keyboardType: email ? TextInputType.emailAddress : null,
                  style: TextStyle(fontFamily: "ed"),
                )
              : Form(
                  key: _formState,
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    controller: _controller,
                    validator: (text) {
                      if (text!.length < 6 || text == "password") {
                        return "This password is too easy to guess.";
                      } else
                        return null;
                    },
                    obscureText: obs,
                    decoration: InputDecoration(
                      errorStyle:
                          TextStyle(fontFamily: "Quicsand", fontSize: 14),
                      hintText: hintText,
                      hintStyle: TextStyle(fontFamily: "djs"),
                    ),
                    keyboardType: email ? TextInputType.emailAddress : null,
                    style: TextStyle(fontFamily: "ed"),
                  ),
                ),
        ],
      ),
    );
  }
}

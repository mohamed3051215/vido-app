import 'package:flutter/material.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/login_dialog.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/sign_up_dialog.dart';

import '../../../colors.dart';

class CustomAppBar extends StatefulWidget {
  final BuildContext ctx;

  const CustomAppBar({Key? key, required this.ctx}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 10, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Vido",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontWeight: FontWeight.w900,
                fontSize: 30),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 55,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    child: Text("Login",
                        style: TextStyle(fontFamily: "Quicsand", fontSize: 20)),
                    onPressed: () {
                      showDialog(
                          context: widget.ctx,
                          builder: (_) {
                            return LoginDialog();
                          });
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                      backgroundColor: MaterialStateProperty.all(blackPink),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextButton(
                  child: Text("or sign up",
                      style: TextStyle(
                          fontFamily: "Quicsand",
                          fontSize: 22,
                          color: blackPink,
                          fontWeight: FontWeight.w400,
                          wordSpacing: -2)),
                  onPressed: () {
                    showDialog(
                        context: widget.ctx,
                        builder: (_) {
                          return SignUpDialog();
                        });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

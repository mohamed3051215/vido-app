import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/colors.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/check_widget.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/custom_text_field.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/sign_up_dialog.dart';
import 'package:vido/screens/home%20screen/home_screen.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  _LoginDialogState createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  bool _showPassword = false, _keepMeLoggedIn = true;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: 430,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                top: -50,
                right: -10,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/close.svg",
                      width: 17, color: Colors.white),
                )),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              fontFamily: "Quicsand",
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              showDialog(
                                  context: context,
                                  builder: (_) => SignUpDialog());
                            },
                            child: Text(
                              "or sign up",
                              style: TextStyle(
                                  fontFamily: "Quicsand",
                                  fontSize: 16,
                                  wordSpacing: -1,
                                  color: blackPink),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    customGenerate: false,
                    label: "Username or email",
                    hintText: "Email",
                    obs: false,
                    email: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      customGenerate: false,
                      label: "Password",
                      hintText: "Strong passwrod",
                      obs: !_showPassword,
                      email: false),
                  SizedBox(height: 40),
                  CheckWidget(
                    title: "Show password",
                    isTrue: _showPassword,
                    func: () {
                      setState(() {
                        _showPassword = !_showPassword;
                      });
                    },
                  ),
                  SizedBox(height: 15),
                  CheckWidget(
                      title: "Keep me logged in",
                      isTrue: _keepMeLoggedIn,
                      func: () {
                        setState(() {
                          _keepMeLoggedIn = !_keepMeLoggedIn;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Container(
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      width: 293,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(blackPink),
                          ),
                          child: Text("Log in",
                              style: TextStyle(
                                  fontSize: 16, fontFamily: "OpenSan"))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

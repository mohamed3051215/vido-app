import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vido/screens/geust%20screen/geust_screen.dart';
import 'package:vido/screens/profile%20screen/profile_screen.dart';

import '../../../colors.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 40),
      child: Row(
        children: [
          Text(
            "v",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 7,
          ),
          Expanded(
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search videos",
                    hintStyle: TextStyle(
                        fontFamily: "Quicsandd",
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            decoration: BoxDecoration(shape: BoxShape.circle, color: blackPink),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.white,
                width: 16,
              ),
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
            onSelected: (dynamic value) {
              switch (value) {
                case "profile":
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                  break;
                default:
              }
            },
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            offset: Offset.fromDirection(1000, 50),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: "name",
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("Takermouri",
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 14.2,
                                fontWeight: FontWeight.w600)),
                      ),
                    )),
                PopupMenuItem(
                    value: "Uploads",
                    height: 40,
                    child: Container(
                      width: 80,
                      child: Text("Upload",
                          style: TextStyle(
                              fontFamily: 'Quicsand',
                              fontWeight: FontWeight.w500,
                              color: blackPink)),
                    )),
                PopupMenuItem(
                    value: "profile",
                    height: 40,
                    child: Container(
                      width: 80,
                      child: Text("Profile",
                          style: TextStyle(
                              fontFamily: 'Quicsand',
                              fontWeight: FontWeight.w500,
                              color: blackPink)),
                    )),
                PopupMenuItem(
                    value: "account settings",
                    height: 40,
                    child: Container(
                      width: 80,
                      height: 20,
                      child: Text("Account settings",
                          style: TextStyle(
                              fontFamily: 'Quicsand',
                              fontWeight: FontWeight.w500,
                              color: blackPink)),
                    )),
                PopupMenuItem(
                  value: "logout",
                  height: 40,
                  child: Container(
                    width: 80,
                    child: Text("Log out",
                        style: TextStyle(
                            fontFamily: 'Quicsand',
                            fontWeight: FontWeight.w500,
                            color: blackPink)),
                  ),
                ),
              ];
            },
            child: Row(
              children: [
                CircleAvatar(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/user.png"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SvgPicture.asset("assets/icons/dropdown.svg",
                    width: 14, color: blackPink),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopupItem<T> extends PopupMenuItem<T> {
  final Function() onTap;
  PopupItem(
      {required this.onTap, required Widget child, required double height})
      : super(child: child, height: height);
  @override
  _PopupItemState<T> createState() => _PopupItemState<T>();
}

class _PopupItemState<T> extends PopupMenuItemState<T, PopupItem<T>> {
  @override
  void handleTap() {
    widget.onTap.call();
    super.handleTap();
  }
}

// showMenu(
//     context: context,
//     position: RelativeRect.fromLTRB(1000, 120, 0, 100),
//     items: [
//       PopupMenuItem(
//           padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
//           child: Container(
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//               child: Text("Takermouri",
//                   style: TextStyle(
//                       fontFamily: 'OpenSans',
//                       fontSize: 14.2,
//                       fontWeight: FontWeight.w600)),
//             ),
//           )),
//       PopupItem(
//           height: 40,
//           onTap: () {},
//           child: Container(
//             width: 80,
//             child: Text("Upload",
//                 style: TextStyle(
//                     fontFamily: 'Quicsand',
//                     fontWeight: FontWeight.w500,
//                     color: blackPink)),
//           )),
//       PopupItem(
//           height: 40,
//           onTap: () {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => ProfileScreen()));
//           },
//           child: Container(
//             width: 80,
//             child: InkWell(
//               onTap: () {},
//               child: Text("Profile",
//                   style: TextStyle(
//                       fontFamily: 'Quicsand',
//                       fontWeight: FontWeight.w500,
//                       color: blackPink)),
//             ),
//           )),
//       PopupItem(
//           onTap: () {},
//           height: 40,
//           child: Container(
//             width: 80,
//             height: 20,
//             child: Text("Account settings",
//                 style: TextStyle(
//                     fontFamily: 'Quicsand',
//                     fontWeight: FontWeight.w500,
//                     color: blackPink)),
//           )),
//       PopupItem(
//           height: 40,
//           onTap: () {
//             print("itis working ");
//           },
//           child: Container(
//             width: 80,
//             child: Text("Log out",
//                 style: TextStyle(
//                     fontFamily: 'Quicsand',
//                     fontWeight: FontWeight.w500,
//                     color: blackPink)),
//           )),
//     ]);

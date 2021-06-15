
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vido/colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find something good",
                style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 80,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Try searching for a color",
                      hintStyle: TextStyle(fontFamily: "Quicksand")),
                ),
              ),
            ],
          ),
          Container(
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: blackPink),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.white,
                width: 16,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

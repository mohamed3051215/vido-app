import 'package:flutter/material.dart';

class UploadCard extends StatelessWidget {
  final String image, title, timeAgo;

  const UploadCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.timeAgo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 152.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 91,
            width: 155,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontFamily: "Quicsan", fontSize: 20),
            overflow: TextOverflow.ellipsis,
           ),
          SizedBox(
            height: 10,
          ),
          Text(timeAgo, style: TextStyle(fontFamily: "Quicsand", fontSize: 14))
        ],
      ),
    );
  }
}

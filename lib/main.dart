import 'package:flutter/material.dart';

import 'screens/geust screen/geust_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vido App',
      theme: ThemeData(
        fontFamily: "RobotoMono",
        primarySwatch: Colors.blue,
      ),
      home: GeustScreen(),
    );
  }
}

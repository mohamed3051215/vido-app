import 'package:flutter/material.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/inteance_widget.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/pick_of_the_day.dart';
import 'package:vido/screens/home%20screen/home%20%20screen%20widgets/app_bar.dart';
import 'package:vido/screens/home%20screen/home%20%20screen%20widgets/just_for_you.dart';
import 'package:vido/screens/home%20screen/home%20%20screen%20widgets/loading_icon.dart';
import 'package:vido/screens/home%20screen/home%20%20screen%20widgets/your_folllow_feed.dart';
import 'package:vido/screens/profile%20screen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(),
          PickOfTheDay(),
          IntenceWidget(),
          JustForYou(),
          YourFollowFeed(),
          LoadingIcon()
        ],
      ),
    );
  }
}

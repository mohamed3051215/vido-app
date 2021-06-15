import 'package:flutter/material.dart';

import 'geust widgets/app_bar.dart';
import 'geust widgets/inteance_widget.dart';
import 'geust widgets/pick_of_the_day.dart';
import 'geust widgets/popular_widget.dart';
import 'geust widgets/recent_widget.dart';
import 'geust widgets/search_text_field.dart';
import 'geust widgets/title_text.dart';

class GeustScreen extends StatefulWidget {
  const GeustScreen({Key? key}) : super(key: key);

  @override
  _GeustScreenState createState() => _GeustScreenState();
}

class _GeustScreenState extends State<GeustScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(ctx: context,),
          TitleText(),
          SearchTextField(),
          PickOfTheDay(),
          IntenceWidget(),
          RecentWidget(),
          PopularWidget(),
        ],
      ),
    );
  }
}

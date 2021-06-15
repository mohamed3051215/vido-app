import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vido/colors.dart';
import 'package:vido/screens/geust%20screen/geust%20widgets/icon_circle.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/about_you.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/app_bar.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/community_text.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/image_and_settings.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/user_card.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/who_follow_you.dart';
import 'package:vido/screens/profile%20screen/profile%20screen%20widgets/who_you_follow.dart';

import 'profile screen widgets/favorites.dart';
import 'profile screen widgets/your_uploads.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar(),
          ImageAndSettings(),
          AboutYou(),
          YourUploads(),
          Favorites(),
          CommunityText(),
          WhoYouFollow(),
          WhoFollowsYou(),
        ],
      ),
    );
  }
}

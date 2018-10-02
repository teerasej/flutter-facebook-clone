

import 'package:flutter/material.dart';
import 'package:my_app/widgets/my_app_bar.dart';
import 'package:my_app/widgets/new_post.dart';
import 'package:my_app/widgets/story_box.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: <Widget>[
          NewPost(),
          StoryBox(),
           
        ],
      )
    );
  }
}
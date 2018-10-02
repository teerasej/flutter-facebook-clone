
import 'package:flutter/material.dart';

class StoryBox extends StatefulWidget {
  _StoryBoxState createState() => _StoryBoxState();
}

class _StoryBoxState extends State<StoryBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 220.0,
            color: Colors.limeAccent,
            child: Center(
              child: Text('Story'),
            ),
          );
  }
}
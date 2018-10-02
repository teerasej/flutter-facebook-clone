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
        child: Card(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Stories'),
                  FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.play_arrow),
                        Text('Play All')
                      ],
                    ),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('1'),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

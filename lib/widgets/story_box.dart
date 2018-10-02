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
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    color: Colors.red,
                    child: Container(
                      width: 120.0,
                      height: 160.0,
                      color: Colors.green,
                      child: Text('ok'),
                    ),
                  )
                ],
              )),
            ],
          ),
        ));
  }
}

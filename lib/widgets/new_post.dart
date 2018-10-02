import 'package:flutter/material.dart';

class NewPost extends StatefulWidget {
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        color: Colors.redAccent,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.network(
                  'https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.0-9/15267619_10154789415276098_1443357584742520709_n.jpg?_nc_cat=103&_nc_eui2=AeHuPeABmNHVHNpJgJ00gVIAjRAxxXJZ_96UDcsaOCG8-e3G_brNJ_nMrKTDV1Wx-qMAz1pw_XBqcY3YhY87vgU1-py_G_VSaJy6RHQUHjrBAQ&oh=c6ccfa1910c5e9908fc779903f1b78db&oe=5C5F4BA1',
                  height: 40.0,
                  width: 40.0,
                ),
                Text("What's your mind?")
              ],
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.videocam),
                      Text('Live')
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.photo),
                      Text('Photos')
                    ],
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.place),
                      Text('Check-in')
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}

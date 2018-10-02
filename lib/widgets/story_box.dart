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
                    padding: EdgeInsets.all(10.0),
                    width: 160.0,
                    color: Colors.red,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(5.0)),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                alignment: FractionalOffset.topCenter,
                                image: NetworkImage(
                                    'https://i.stack.imgur.com/lkd0a.png'),
                              )),
                        ),
                        // Material(color: Colors.yellowAccent),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              children: <Widget>[
                                Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                "https://scontent.fbkk5-3.fna.fbcdn.net/v/t1.0-9/15267619_10154789415276098_1443357584742520709_n.jpg?_nc_cat=103&_nc_eui2=AeHuPeABmNHVHNpJgJ00gVIAjRAxxXJZ_96UDcsaOCG8-e3G_brNJ_nMrKTDV1Wx-qMAz1pw_XBqcY3YhY87vgU1-py_G_VSaJy6RHQUHjrBAQ&oh=c6ccfa1910c5e9908fc779903f1b78db&oe=5C5F4BA1")))),
                                Text('Teerasej')
                              ],
                            )),
                      ],
                    ),
                    // child: Container(
                    //   width: 120.0,
                    //   height: 160.0,
                    //   color: Colors.green,
                    //   child: Text('ok'),
                    // ),
                  )
                ],
              )),
            ],
          ),
        ));
  }
}

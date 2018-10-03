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
                      width: 140.0,
                      // color: Colors.amber,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          // ภาพ background 
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage('https://res.cloudinary.com/rebelwalls/image/upload/b_black,c_fill,fl_progressive,h_533,q_auto,w_800/v1428566598/article/R11931_image1')
                              )
                            ),
                          ),
                          // ภาพ และชื่อคนอัพ story 
                          Positioned(
                            bottom: 10.0,
                            left: 0.0,
                            right: 0.0,
                            child: Column(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://scontent.fbkk5-8.fna.fbcdn.net/v/t1.0-9/15267619_10154789415276098_1443357584742520709_n.jpg?_nc_cat=103&_nc_eui2=AeHuPeABmNHVHNpJgJ00gVIAjRAxxXJZ_96UDcsaOCG8-e3G_brNJ_nMrKTDV1Wx-qMAz1pw_XBqcY3YhY87vgU1-py_G_VSaJy6RHQUHjrBAQ&oh=c6ccfa1910c5e9908fc779903f1b78db&oe=5C5F4BA1'),
                                ),
                                Text('username')
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

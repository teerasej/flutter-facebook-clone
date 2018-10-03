import 'package:flutter/material.dart';
import 'package:my_app/models/story_model.dart';

class StoryBox extends StatefulWidget {
  _StoryBoxState createState() => _StoryBoxState();
}

class _StoryBoxState extends State<StoryBox> {

  List<StoryModel> storyList = new List<StoryModel>();

  _StoryBoxState() {
    
    storyList.add(StoryModel("Captain","http://static.shoplightspeed.com/shops/609551/files/002433978/dynamic-discs-dyemax-marvel-captain-america-truth.jpg", "http://static.shoplightspeed.com/shops/609551/files/002433978/dynamic-discs-dyemax-marvel-captain-america-truth.jpg"));
    storyList.add(StoryModel("Iron Man","https://cdn.images.express.co.uk/img/dynamic/36/590x/Avengers-Iron-Man-was-almost-played-by-another-major-star-936289.jpg", "https://cdn.images.express.co.uk/img/dynamic/36/590x/Avengers-Iron-Man-was-almost-played-by-another-major-star-936289.jpg"));
    storyList.add(StoryModel("Black Widow","https://am24.akamaized.net/tms/cnt/uploads/2015/06/black_widow_avengers_age_of_ultron-wide-1280x800.jpg", "https://am24.akamaized.net/tms/cnt/uploads/2015/06/black_widow_avengers_age_of_ultron-wide-1280x800.jpg"));
    storyList.add(StoryModel("Thanos","https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/5/52/Empire_March_Cover_IW_6_Textless.png", "https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/5/52/Empire_March_Cover_IW_6_Textless.png"));
  
  }



  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220.0,
        // color: Colors.limeAccent,
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
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
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (context, index) {

                    var story = storyList[index];

                    // สร้าง Story card
                    return Container(
                      margin: EdgeInsets.only(right: 5.0),
                      width: 120.0,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          // ภาพ background 
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(story.backgroundImageURL)
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
                                  backgroundImage: NetworkImage(story.profileImageURL),
                                ),
                                Text(
                                  story.username, 
                                    style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                   
                                  ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ),
            ],
          ),
          ),
        ));
  }
}

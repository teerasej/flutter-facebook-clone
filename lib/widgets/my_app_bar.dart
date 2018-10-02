
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Feed'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.chat_bubble),
            onPressed: () {},
          )
        ],
      );
  }
}
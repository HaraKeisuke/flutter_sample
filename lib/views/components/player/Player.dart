import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Container(),
          ),
          Flexible(
            flex: 4,
            child: Align(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(Icons.first_page),
                  iconSize: 60,
                  onPressed: () {},
                )),
          ),
          Flexible(
            flex: 4,
            child: IconButton(
              icon: Icon(Icons.play_arrow),
              iconSize: 60,
              onPressed: () {},
            ),
          ),
          Flexible(
            flex: 4,
            child: IconButton(
              icon: Icon(Icons.last_page),
              iconSize: 60,
              onPressed: () {},
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    );
  }
}

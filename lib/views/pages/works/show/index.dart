import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_sample/views/components/player/Player.dart';

class WorkShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            size: 24.0,
            color: Colors.white,
          ),
        ),
        title: Text(
          '作品詳細',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColorStart: Color.fromRGBO(241, 63, 121, 1.0),
        backgroundColorEnd: Color.fromRGBO(12, 182, 220, 1.0),
        actions: <Widget>[
          // Icon(Icons.edit, color: Colors.lightBlueAccent),
        ],
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: viewportConstraints.maxHeight,
          ),
          child: IntrinsicHeight(child: WorkShowContent()),
        ));
      }),
    );
  }
}


class WorkShowContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15.0),
              width: 300.0,
              height: 300,
              color: Colors.red,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "曲名",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text("サークル名",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromRGBO(100, 100, 100, 1),
                                  fontWeight: FontWeight.bold)))
                    ],
                  )),
              Container(
                width: 100,
                height: 80,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.playlist_add),
                      iconSize: 30,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.favorite_border),
                      iconSize: 30,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Slider(
              activeColor: Colors.black,
              min: 0.0,
              max: 10.0,
              onChanged: (newRating) {
                // setState(() => _sliderValue = newRating);
              },
              value: 10,
            ),
          ),
          Player(),
        ],
      ),
    );
  }
}

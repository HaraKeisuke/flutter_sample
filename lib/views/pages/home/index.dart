import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_sample/views/components/common/SideScrollList.dart';

const button_size = 20.0;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        // leading: Icon(Icons.account_circle, size: 40.0),
        title: Text(
          'ホーム',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColorStart: Color.fromRGBO(241, 63, 121, 1.0),
        backgroundColorEnd: Color.fromRGBO(12, 182, 220, 1.0),
        actions: <Widget>[
          // Icon(Icons.edit, color: Colors.lightBlueAccent),
        ],
      ),
      body: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          child: SideScrollList(
            title: "最新の作品",
            items: [Colors.red, Colors.blue, Colors.green, Colors.pink]),
        ),
        Container(
          child: SideScrollList(
            title: "人気の作品",
            items: [Colors.red, Colors.blue, Colors.green, Colors.pink]),
        ),
        Container(
          child: SideScrollList(
            title: "おすすめの作品",
            items: [Colors.red, Colors.blue, Colors.green, Colors.pink]),
        ),
      ],
    );
  }
}

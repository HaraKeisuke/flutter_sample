import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/views/pages/works/show/index.dart';

class SideScrollList extends StatelessWidget {
  final String title;
  final List<Color> items;

  SideScrollList({@required this.title, @required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 5.0),
        child: Wrap(children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                  child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ))),
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          return WorkShow();
                        },
                      ));
                    },
                    child: Container(
                      width: 200.0,
                      color: items[index],
                    ));
              },
              itemCount: items.length,
            ),
          )
        ]));
  }
}

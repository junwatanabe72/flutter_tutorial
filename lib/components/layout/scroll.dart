import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = [
      "message",
      "メッセージ",
      "メッセージ",
      "メッセージ",
      "メッセージ",
    ];
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          if (index >= list.length) {
            list.addAll([
              "メッセージ",
              "message",
              "メッセージ",
              "メッセージ",
            ]);
          }
          return _list(list[index], Icon(Icons.room));
        });
  }

  Widget _list(String title, Icon icon) {
    return Container(
        width: 100,
        decoration: new BoxDecoration(
            border:
                new Border(right: BorderSide(width: 1.0, color: Colors.grey))),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 20.0),
          ),
        ));
  }
}

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
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
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
    return GestureDetector(
        child: ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 18.0),
      ),
      onTap: () {
        print("onTap called.");
      },
    ));
  }
}

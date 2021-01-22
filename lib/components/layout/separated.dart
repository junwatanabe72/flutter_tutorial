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
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return _list(list[index], Icon(Icons.room));
      },
      separatorBuilder: (BuildContext context, int index) {
        return separatorItem();
      },
      itemCount: list.length,
    );
  }

  Widget separatorItem() {
    return Container(
      height: 10,
      color: Colors.orange,
    );
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
      onLongPress: () {
        print("onLongTap called.");
      }, // 長押し
    ));
  }
}

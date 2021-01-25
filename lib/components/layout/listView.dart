import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  final String title;
  final Icon icon;
  Layout(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
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

import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(color: Colors.blue, width: 100, height: 100),
            Container(color: Colors.red, width: 100, height: 100),
          ],
        ),
      ]),
    );
  }
}

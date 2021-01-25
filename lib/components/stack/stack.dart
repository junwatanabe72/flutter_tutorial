import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(width: 100, height: 100, color: Colors.green),
        Container(
          width: 50,
          height: 80,
          color: Colors.orange,
        )
      ],
    );
  }
}

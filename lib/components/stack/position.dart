import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          width: 400.0,
          height: 400.0,
          child: Container(
            color: Colors.orange,
          ),
        ),
        Positioned(
          left: 20.0,
          top: 20.0,
          width: 300.0,
          height: 300.0,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Positioned(
          left: 10.0,
          top: 10.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.green,
          ),
        ),
        Positioned(
          left: 120.0,
          top: 120.0,
          width: 100.0,
          height: 100.0,
          child: Container(
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

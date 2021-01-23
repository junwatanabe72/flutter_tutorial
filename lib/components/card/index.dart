import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(50.0),
      child: Container(
          margin: const EdgeInsets.all(10.0),
          width: 300,
          height: 100,
          child: Text(
            'CardCard',
            style: TextStyle(fontSize: 30),
          )),
    );
  }
}

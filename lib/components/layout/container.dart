import 'package:flutter/material.dart';

// StatelessWidgetを継承
class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 300.0,
          height: 300.0,
          child: Text("word"),
          padding: const EdgeInsets.all(50.0),
          margin: const EdgeInsets.all(100.0),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
        ),
      ),
    );
  }
}

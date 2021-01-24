import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Center(
            child: Container(color: Colors.blue, width: 50, height: 100)));
  }
}

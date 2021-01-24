import 'package:flutter/material.dart';
import 'header.dart';

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(child: Text("test")),
    );
  }
}

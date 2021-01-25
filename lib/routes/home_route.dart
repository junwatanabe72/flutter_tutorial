import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("ホーム") // <- (※3)

        );
  }
}

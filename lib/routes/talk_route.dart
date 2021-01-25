import 'package:flutter/material.dart';
import 'package:new_flutter_app/components/app/talk/index.dart';

class Talk extends StatelessWidget {
  // <- (※1)
  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = new List(10).map((list) {
      return Tile(
        icon: Icons.person,
        username: "鹿太郎",
        message: "しかし、鹿しかいない",
      );
    }).toList();
    return ListView(padding: const EdgeInsets.all(8), children: tiles
        // <- (※3)
        );
  }
}

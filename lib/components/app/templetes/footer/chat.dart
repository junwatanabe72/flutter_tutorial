import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer();

  @override
  _Footer createState() => _Footer();
}

class _Footer extends State {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.photo),
            onPressed: () => {},
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Aa',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.mic),
            onPressed: () => {},
          ),
        ],
      ),
    );
  }
}

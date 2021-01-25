import 'package:flutter/material.dart';
import 'package:new_flutter_app/components/app/templetes/footer/chat.dart';
import 'package:new_flutter_app/components/app/templetes/header/chat.dart';

class Chat extends StatelessWidget {
  final String username;
  Chat({Key key, this.username}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(username: this.username),
      body: Center(child: Text("Chat")),
      backgroundColor: Colors.cyan,
      bottomNavigationBar: Footer(),
    );
  }
}

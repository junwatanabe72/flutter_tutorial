import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  final String username;
  Header({this.username});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        this.username ?? '', // <- 追加！
      ),
      // == ヘッダーを追加　===============
      actions: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: IconButton(
            icon: Icon(Icons.call),
            onPressed: () => {},
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: IconButton(
              icon: Icon(Icons.dehaze),
              onPressed: () => {},
            )),
      ],
      // ===============================
    );
  }
}

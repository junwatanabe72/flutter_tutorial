import 'package:flutter/material.dart';

const _footerItemNames = [
  'ホーム',
  'トーク',
  'タイムライン',
  'ニュース',
  'ウォレット',
];
const _footerIcons = [
  Icons.home,
  Icons.textsms,
  Icons.access_time,
  Icons.content_paste,
  Icons.work,
];

class Footer extends StatelessWidget {
  final int number;
  final ValueChanged<int> onChanged;
  Footer({this.number, this.onChanged});
  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> _createBottomNavigationBarItem(int index) {
      final int length = _footerItemNames.length;
      var list = [for (var i = 0; i < length; i += 1) i];
      final List<BottomNavigationBarItem> items = list.map((int num) {
        return BottomNavigationBarItem(
          icon: num == index
              ? Icon(
                  _footerIcons[num],
                  color: Colors.black87,
                )
              : Icon(
                  _footerIcons[num],
                  color: Colors.black26,
                ),
          label: _footerItemNames[num],
        );
      }).toList();
      return items;
    }

    final List<BottomNavigationBarItem> _bottomNavigationBarItems =
        _createBottomNavigationBarItem(this.number);

    void _onItemTapped(int index) {
      this.onChanged(index);
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
      items: _bottomNavigationBarItems,
      currentIndex: this.number,
      onTap: _onItemTapped,
    );
  }
}

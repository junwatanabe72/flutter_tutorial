import 'package:flutter/material.dart';
import 'package:new_flutter_app/routes/home_route.dart';
import 'package:new_flutter_app/routes/new_route.dart';
import 'package:new_flutter_app/routes/talk_route.dart';
import 'package:new_flutter_app/routes/timeline_route.dart';
import 'package:new_flutter_app/routes/wallet_route.dart';
import 'header.dart';

class RootWidget extends StatefulWidget {
  const RootWidget();

  @override
  _RootWidget createState() => _RootWidget();
}

class _RootWidget extends State {
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];
  static const _footerItemNames = [
    'ホーム',
    'トーク',
    'タイムライン',
    'ニュース',
    'ウォレット',
  ];
  static const _footerIcons = [
    Icons.home,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
    Icons.work,
  ];
  var _routes = [
    Home(),
    Talk(),
    TimeLine(),
    News(),
    Wallet(),
  ];
  @override
  void initState() {
    super.initState();
    _bottomNavigationBarItems.add(_updateActiveState(0));
    for (var i = 1; i < _footerItemNames.length; i++) {
      _bottomNavigationBarItems.add(_updateDeactiveState(i));
    }
  }

  BottomNavigationBarItem _updateActiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black87,
      ),
      label: _footerItemNames[index],
    );
  }

  /// インデックスのアイテムをディアクティベートする
  BottomNavigationBarItem _updateDeactiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black26,
      ),
      label: _footerItemNames[index],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationBarItems[_selectedIndex] =
          _updateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _updateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(),
        body: _routes.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // これを書かないと3つまでしか表示されない
          items: _bottomNavigationBarItems,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }
}

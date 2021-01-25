import 'package:flutter/material.dart';
import 'package:new_flutter_app/components/app/templetes/footer/index.dart';
import 'package:new_flutter_app/components/app/templetes/header/index.dart';
import 'package:new_flutter_app/routes/home_route.dart';
import 'package:new_flutter_app/routes/new_route.dart';
import 'package:new_flutter_app/routes/talk_route.dart';
import 'package:new_flutter_app/routes/timeline_route.dart';
import 'package:new_flutter_app/routes/wallet_route.dart';

class RootWidget extends StatefulWidget {
  const RootWidget();

  @override
  _RootWidget createState() => _RootWidget();
}

class _RootWidget extends State {
  int _selectedIndex = 0;

  var _routes = [
    Home(),
    Talk(),
    TimeLine(),
    News(),
    Wallet(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(),
        body: _routes.elementAt(_selectedIndex),
        bottomNavigationBar:
            Footer(number: _selectedIndex, onChanged: _onItemTapped));
  }
}

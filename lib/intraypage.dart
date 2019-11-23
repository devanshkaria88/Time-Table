import 'package:flutter/material.dart';
import 'global.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backColor,
      child: ListView(
        padding: EdgeInsets.only(top: 250),
        children: getlist(),
      ),
    );
  }

  List<Widget> getlist() {

    List<Container> list = [];
    for (int i = 0; i<10; i++) {
      list.add(Container(
        height: 100,
        color: Colors.purple,
      ));
      list.add(Container(
        height: 100,
        color: Colors.red,
      ));
    }
    return list;
  }
}
import 'package:flutter/material.dart';
import 'global.dart';
import 'intray_todo.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  List<IntrayTodo> todoItems = [];
  @override
  Widget build(BuildContext context) {
    todoItems = getlist();
    return Container(
      color: backColor,
      child: _buildReorderableListSimple(context)
    );
  }

  Widget _buildListTile(BuildContext context, IntrayTodo item) {
    return ListTile(
      key: Key(item.keyValue),
      title: item,
    );
  }
  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) {
        newIndex -= 1;
      }
      final Widget item = todoItems.removeAt(oldIndex);
      todoItems.insert(newIndex, item);
    });
  }

  Widget _buildReorderableListSimple(BuildContext context) {
    return  Theme(
      data: ThemeData(
          canvasColor: Colors.transparent
      ),
      child: ReorderableListView(
        // handleSide: ReorderableListSimpleSide.Right,
        // handleIcon: Icon(Icons.access_alarm),
        padding: EdgeInsets.only(top: 300.0),
        children: todoItems.map((IntrayTodo item) => _buildListTile(context, item)).toList(),
        onReorder: _onReorder,
      ),
    );

  }



  List<Widget> getlist() {
    for (int i = 0; i<20; i++) {
      todoItems.add(IntrayTodo(title: "hello"));
    }
    return todoItems;
  }
}
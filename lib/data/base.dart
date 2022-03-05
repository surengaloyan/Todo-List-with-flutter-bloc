import 'package:flutter/widgets.dart';
import 'package:todo_list/list_item.dart';

import '../bloc/todolist_state.dart';

class Base {
  var myBloc;

  set SetMyBloc(value) => myBloc = value;

  List items = [];

  TodolistState addItem(index, text) {
    items.add(Item(index: index, text: text));
    return TodolistState(base: this);
  }

  TodolistState removeItem(id) {
    items.removeAt(id);
    return TodolistState(base: this);
  }

  List<Widget> getList(list) {
    List<Widget> childs = [];
    for (var i = 0; i < list.length; i++) {
      childs.add(ListItem(id: i + 1, itemText: list[i].text, myBloc: myBloc));
      childs.add(const SizedBox(height: 10));
    }
    return childs;
  }

  // Object getItem(id) => items.map((e) => id == e.index);
}

class Item {
  int index;
  String text;
  Item({required this.index, required this.text});
}

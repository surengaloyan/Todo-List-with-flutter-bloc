import 'package:flutter/widgets.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/list_item.dart';

import '../bloc/todolist_state.dart';

class Base {
  late TodolistBloc myBloc;

  set SetMyBloc(value) => myBloc = value;

  List items = [];

  TodolistState addItem(index, text) {
    items.add(Item(index: index, text: text));
    return TodolistState(base: this);
  }

  TodolistState removeItem(id, text) {
    for (var i = 0; i < items.length; i++) {
      if (items[i].index == id) {
        items.removeAt(i);
        break;
      }
    }
    return TodolistState(base: this);
  }

  List<Widget> getList(list) {
    List<Widget> childs = [];
    for (var i = 0; i < list.length; i++) {
      childs.add(ListItem(id: list[i].index, itemText: list[i].text, myBloc: myBloc, idInList: i + 1,));
      childs.add(const SizedBox(height: 10));
    }
    return childs;
  }
}

class Item {
  int index;
  String text;
  Item({required this.index, required this.text});
}

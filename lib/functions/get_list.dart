import 'package:flutter/material.dart';
import 'package:todo_list/ui/list_item.dart';


List<Widget> getList(list) {
  List<Widget> childs = [];
  for (var i = 0; i < list.length; i++) {
    childs.add(
        ListItem(id: list[i].index, itemText: list[i].text, idInList: i + 1));
    childs.add(const SizedBox(height: 10));
  }
  return childs;
}

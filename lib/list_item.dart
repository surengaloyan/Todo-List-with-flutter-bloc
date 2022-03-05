import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/glass_background.dart';

class ListItem extends StatelessWidget {
  int idInList;
  int id;
  String itemText;
  ListItem(
      {Key? key,
      required this.id,
      required this.idInList,
      required this.itemText,
      required this.myBloc})
      : super(key: key);

  TodolistBloc myBloc;

  @override
  Widget build(BuildContext context) {
    return GlassBackground(
      horizonalPadding: 20,
      verticalalPadding: 10,
      opacity: 0.3,
      childWidg: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '$idInList.',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              const SizedBox(width: 5),
              Text(
                itemText,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              myBloc.add(RemoveListItem(index: id, text: itemText));
            },
            icon: const Icon(
              Icons.highlight_remove_rounded,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

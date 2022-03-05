import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/glass_background.dart';

class ListItem extends StatelessWidget {
  int id;
  String itemText;
  ListItem({Key? key, required this.id, required this.itemText, required this.myBloc})
      : super(key: key);

  var myBloc;

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
              Text('$id.'),
              const SizedBox(width: 5),
              Text(itemText, style: const TextStyle(color: Colors.white)),
            ],
          ),
          IconButton(
            onPressed: () {
              myBloc.add(RemoveListItem(index: id));
            },
            icon: const Icon(
              Icons.highlight_remove_rounded,
            ),
          ),
        ],
      ),
    );
  }
}

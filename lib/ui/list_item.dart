import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/ui/glass_background.dart';

class ListItem extends StatelessWidget {
  final int idInList;
  final int id;
  final String itemText;
  const ListItem(
      {Key? key,
      required this.id,
      required this.idInList,
      required this.itemText})
      : super(key: key);

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
              BlocProvider.of<TodoListBloc>(context)
                  .add(RemoveTodoItem(id: id));
              print('list item');
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

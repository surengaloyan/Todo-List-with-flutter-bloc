import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_state.dart';
import 'package:todo_list/functions/get_list.dart';
import 'package:todo_list/ui/glass_background.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class TodosList extends StatelessWidget {
  const TodosList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GlassBackground(
        horizonalPadding: 10,
        verticalalPadding: 10,
        opacity: 0.2,
        childWidg: BlocBuilder<TodoListBloc, TodoListState>(
          builder: (context, state) {
            if (state.items.isEmpty) {
              return ListView(
                children: const [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'Nothing to do',
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return ListView(
                children: getList(state.items),
              );
            }
          },
        ),
      ),
    );
  }
}

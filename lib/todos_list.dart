import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_state.dart';
import 'package:todo_list/glass_background.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodosList extends StatelessWidget {
  TodosList({Key? key, required this.myBloc}) : super(key: key);
  var myBloc;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GlassBackground(
        horizonalPadding: 10,
        verticalalPadding: 10,
        opacity: 0.2,
        childWidg: BlocBuilder<TodolistBloc, TodolistState>(
          bloc: myBloc,
          builder: (context, state) {
            state.base.SetMyBloc = myBloc;
            if (state.base.items.isEmpty) {
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
                children: state.base.getList(state.base.items),
              );
            }
          },
        ),
      ),
    );
  }
}

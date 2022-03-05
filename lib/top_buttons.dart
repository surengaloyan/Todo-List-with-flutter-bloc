import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/bloc/todolist_state.dart';
import 'package:todo_list/glass_background.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CostomButtons extends StatelessWidget {
  CostomButtons({Key? key, required this.myBloc, required this.ids})
      : super(key: key);
  TextEditingController _value = TextEditingController();
  Random rand = Random();
  List ids;
  TodolistBloc myBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlassBackground(
          opacity: 0.2,
          horizonalPadding: 10,
          verticalalPadding: 20,
          childWidg: BlocBuilder<TodolistBloc, TodolistState>(
            bloc: myBloc,
            builder: (context, state) {
              return TextField(
                controller: _value,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 20,
                ),
                cursorColor: const Color.fromARGB(255, 207, 206, 206),
                decoration: InputDecoration.collapsed(
                  hintText: 'What do you have to do?',
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        GlassBackground(
            opacity: 0.3,
            horizonalPadding: 2,
            verticalalPadding: 2,
            childWidg: TextButton(
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                if (_value.text != '') {
                  int id = 0 + rand.nextInt(10000); //initialize id
                  while (ids.contains(id) == true) {
                    id = 0 + rand.nextInt(10000); //get new id
                  }
                  ids.add(id);
                  myBloc.add(AddListItem(text: _value.text, index: id));
                  _value.text = '';
                }
              },
            )),
      ],
    );
  }
}

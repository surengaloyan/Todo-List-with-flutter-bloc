import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/glass_background.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CostomButtons extends StatelessWidget {
  CostomButtons({Key? key, required this.myBloc}) : super(key: key);
  TextEditingController _value = TextEditingController();
  int id = 0;
  var myBloc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GlassBackground(
          opacity: 0.2,
          horizonalPadding: 10,
          verticalalPadding: 20,
          childWidg: TextField(
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
          ),
        ),
        const SizedBox(height: 20),
        GlassBackground(
            opacity: 0.3,
            horizonalPadding: 2,
            verticalalPadding: 2,
            childWidg: TextButton(
              child: const Text(
                'ADD',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 30,
                ),
              ),
              onPressed: () {
                myBloc.add(AddListItem(text: _value.text, index: id++));
                print(myBloc);
              },
            )),
      ],
    );
  }
}

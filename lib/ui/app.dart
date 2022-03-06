import 'package:flutter/material.dart';
import 'package:todo_list/ui/todos_list.dart';
import 'package:todo_list/ui/top_buttons.dart';

class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Td-Do List',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                TopButtons(),
                const SizedBox(height: 30),
                const TodosList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

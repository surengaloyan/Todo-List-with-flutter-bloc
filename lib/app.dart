import 'package:flutter/material.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/todos_list.dart';
import 'package:todo_list/top_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatefulWidget {
  TodoList({Key? key}) : super(key: key);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  var myBloc = TodolistBloc();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodolistBloc(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg5.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Td-Do List'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    CostomButtons(myBloc: myBloc),
                    const SizedBox(height: 30),
                    TodosList(myBloc: myBloc),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

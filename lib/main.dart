import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/bloc/todolist_bloc.dart';
import 'package:todo_list/ui/app.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoListBloc(),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Colors.transparent,
        ),
        debugShowCheckedModeBanner: false,
        home: const TodoList(),
      ),
    );
  }
}

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:todo_list/bloc/todolist_event.dart';
import 'package:todo_list/bloc/todolist_state.dart';
import 'package:todo_list/data/item.dart';

class TodoListBloc extends Bloc<TodoListEvents, TodoListState> {
  TodoListBloc() : super(TodoListState(ids: [], items: [])) {
    on<AddTodoItem>((event, emit) {
      Random rand = Random();
      int id = 0 + rand.nextInt(10000);
      while (state.ids.contains(id) == true) {
        id = 0 + rand.nextInt(10000);
      }
      state.ids.add(id);
      state.items.add(Item(index: id, text: event.itemText));
      emit(state);
    });
    on<RemoveTodoItem>((event, emit) {
      for (var i = 0; i < state.items.length; i++) {
        if (state.items[i].index == event.id) {
          state.items.removeAt(i);
          break;
        }
      }
      emit(state);
    });
  }
}

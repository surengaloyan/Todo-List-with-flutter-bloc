import 'todolist_event.dart';
import 'todolist_state.dart';
import '../data/base.dart';

import 'package:bloc/bloc.dart';

class TodolistBloc extends Bloc<TodolistEvent, TodolistState> {
  TodolistBloc() : super(TodolistState(base: Base())) {
    on<AddListItem>((event, emit) {
      emit(state.base.addItem(event.index, event.text));
    });
    on<RemoveListItem>((event, emit) {
      emit(state.base.removeItem(event.index, event.text));
    });
  }
}

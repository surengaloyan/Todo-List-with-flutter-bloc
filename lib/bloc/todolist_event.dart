// part of 'lib/bloc/todolist_bloc.dart';

// @immutable
abstract class TodolistEvent {}

class AddListItem extends TodolistEvent {
  int index;
  String text;
  AddListItem({required this.index, required this.text});
}

class RemoveListItem extends TodolistEvent {
  int index;
  RemoveListItem({required this.index});
}

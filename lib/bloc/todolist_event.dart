abstract class TodolistEvent {}

class AddListItem extends TodolistEvent {
  int index;
  String text;
  AddListItem({required this.index, required this.text});
}

class RemoveListItem extends TodolistEvent {
  int index;
  String text;
  RemoveListItem({required this.index, required this.text});
}

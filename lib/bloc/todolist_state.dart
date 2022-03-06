import 'package:todo_list/data/item.dart';

class TodoListState {
  List<Item> items;
  List<int> ids;

  TodoListState({required this.ids, required this.items});
}

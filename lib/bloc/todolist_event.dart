abstract class TodoListEvents {}

class AddTodoItem extends TodoListEvents {
  String itemText;
  AddTodoItem({required this.itemText});
}

class RemoveTodoItem extends TodoListEvents {
  int id;
  RemoveTodoItem({required this.id});
}


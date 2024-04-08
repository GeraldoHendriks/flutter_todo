import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo.dart';
import 'package:intl/intl.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    super.key,
    required this.todo,
  });

  final ToDo todo;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todo.title),
      subtitle: Text(DateFormat('dd-MM-yyyy').format(todo.dueDate)),
      value: todo.isComplete,
      onChanged: (_) => todo.toggleComplete(),
    );
  }
}

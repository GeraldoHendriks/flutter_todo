import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo.dart';
import 'package:intl/intl.dart';

class TodoListItem extends StatelessWidget {
  const TodoListItem({
    super.key,
    required this.todo,
    required this.onChanged,
  });

  final ToDo todo;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      subtitle: Text(DateFormat('HH:mm dd-MM').format(todo.dueDate)),
      trailing: todo.isComplete
          ? const Icon(Icons.check_box_outlined)
          : const Icon(Icons.check_box_outline_blank),
      onTap: onChanged,
    );
  }
}

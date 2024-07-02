import 'package:flutter/material.dart';
import 'package:flutter_todo/models/todo.dart';
import 'package:flutter_todo/widgets/todo/todo_list_item.dart';
import 'package:uuid/uuid.dart';

class TodoOverview extends StatefulWidget {
  const TodoOverview({super.key});

  @override
  State<TodoOverview> createState() => _TodoOverviewState();
}

class _TodoOverviewState extends State<TodoOverview> {
  List<ToDo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome!'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => TodoListItem(
          todo: todos[index],
          onChanged: () => setState(() {
            todos[index] = todos[index].toggleComplete();
          }),
        ),
        itemCount: todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => setState(() {
          todos.add(
            ToDo(
              id: const Uuid().v1(),
              title: 'title',
              description: 'description',
              dueDate: DateTime.now(),
            ),
          );
        }),
      ),
    );
  }
}

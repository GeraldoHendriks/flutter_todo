class ToDo {
  final String id;
  final String title;
  final String description;
  final DateTime dueDate;
  final bool isComplete;
  final List<String> subtasks;

  ToDo({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    this.isComplete = false,
    this.subtasks = const [],
  });
}
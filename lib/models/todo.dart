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

  ToDo toggleComplete() {
    return ToDo(
      id: id,
      title: title,
      description: description,
      dueDate: dueDate,
      isComplete: !isComplete,
      subtasks: subtasks,
    );
  }

  ToDo update({
    String? title,
    String? description,
    DateTime? dueDate,
    List<String>? subtasks,
  }) {
    return ToDo(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      dueDate: dueDate ?? this.dueDate,
      isComplete: isComplete,
      subtasks: subtasks ?? this.subtasks,
    );
  }
}

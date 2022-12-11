class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Eat breakfast', isDone: true),
      Todo(id: '02', todoText: 'Make Coffee', isDone: true),
      Todo(id: '03', todoText: 'Water Plants', isDone: true),
      Todo(id: '04', todoText: 'Groceries'),
      Todo(id: '05', todoText: 'Read news'),
      Todo(id: '06', todoText: 'Cook Lunch'),
    ];
  }
}

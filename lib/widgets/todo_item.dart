import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todoItem;
  final onTodoChanged;
  final onDeleteItem;
  const TodoItem(
      {super.key,
      required this.todoItem,
      this.onTodoChanged,
      this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: tdBGColor,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ListTile(
          onTap: () {
            onTodoChanged(todoItem);
          },
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          tileColor: Colors.white,
          leading: Icon(
            todoItem.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          title: Text(
            todoItem.todoText!,
            style: TextStyle(
                color: tdBlack,
                fontSize: 16,
                decoration: todoItem.isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                color: tdRed, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              color: Colors.white,
              iconSize: 18,
              icon: const Icon(Icons.delete),
              onPressed: () {
                onDeleteItem(todoItem.id);
              },
            ),
          ),
        ),
      ),
    );
  }
}

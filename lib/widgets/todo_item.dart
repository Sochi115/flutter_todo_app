import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/colors.dart';

import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todoItem;
  const TodoItem({super.key, required this.todoItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Tapped list tile');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        title: Text(
          todoItem.todoText!,
          style: const TextStyle(
              color: tdBlack,
              fontSize: 16,
              decoration: TextDecoration.lineThrough),
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
              print('Tapped delete button');
            },
          ),
        ),
      ),
    );
  }
}

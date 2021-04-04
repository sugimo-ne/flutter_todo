import 'package:flutter/material.dart';
import 'package:todo/providers/todo_list_provider.dart';
import 'package:provider/provider.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoListProvider>(
      create: (_) => TodoListProvider(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('TODO'),
          ),
          body: Consumer<TodoListProvider>(builder: (context, model, child) {
            return todos(model.todos);
          })),
    );
  }

  Widget todos(list) {
    return ListView.builder(

        // padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, index) {
      if (index < list.length) {
        return _todoItem(
          list[index]["title"],
          list[index]["description"],
          list[index]["state"],
        );
      }
    });
  }

  Widget _todoItem(String item, String description, bool state) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ActionChip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            child: Text('AB'),
          ),
          label: Container(
              width: 250,
              height: 50,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Text(item, style: TextStyle(fontSize: 20.0)),
              )),
          onPressed: () {
            print("If you stand for nothing, Burr, what’ll you fall for?");
          }),
    );
  }
}

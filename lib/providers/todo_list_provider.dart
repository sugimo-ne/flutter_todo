import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TodoListProvider extends ChangeNotifier {
  var sample1 = {"title": "テスト１", "description": "説明1", "state": false};
  var todos = [
    {"title": "テスト１", "description": "説明1", "state": false},
    {"title": "テスト3;;;;;;;;;;;;;;;", "description": "説明1", "state": true}
  ];

  void updateTodo() {
    notifyListeners();
  }
}

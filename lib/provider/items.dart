import 'package:flutter/material.dart';

class Items with ChangeNotifier {
  List items = [];

  addItem(txt) {
    this.items.add(txt);
    notifyListeners();
  }
}

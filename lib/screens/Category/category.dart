import 'package:flutter/material.dart';
// import './Create/create.dart';
import 'package:app_big/screens/Category/Create/create.dart';
import 'package:app_big/screens/Category/List/list.dart';

class CategoryScreen extends StatefulWidget {
  createState() {
    return CategoryScreenState();
  }
}

class CategoryScreenState extends State {
  int selectedIndex = 0;
  var categories = [];
  final screens = [Create(), List()];
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Category'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.selectedIndex,
          onTap: (data) {
            print('User is tapping TAB- ${data}');
            setState(() {
              this.selectedIndex = data;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "Create"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "List")
          ],
        ),
        body: this.selectedIndex == 0
            ? Create(onCreate: (list) {
                setState(() {
                  this.categories = list;
                });
              })
            : ListWidget(items: this.categories));
  }
}

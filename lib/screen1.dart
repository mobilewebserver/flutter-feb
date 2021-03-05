import 'package:app_big/provider/items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of(context);
    final ItemsProvider = context.read<Items>();

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(
                Icons.store,
              )),
          BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(
                Icons.store,
              )),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                final items = ItemsProvider.items;
                ItemsProvider.addItem('Item ${items.length}');
              },
              child: Text('Create'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Go to home'),
            ),
            TextFormField(
              onChanged: (val) {
                print(val);
              },
              maxLines: 10,
              decoration: InputDecoration(labelText: "Product name"),
            ),
          ],
        ),
      ),
    );
  }
}

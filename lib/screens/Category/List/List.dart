import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  var items = [];
  ListWidget({this.items});
  @override
  build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          for (var i = 0; i < this.items.length; i++)
            ListTile(
              title: Text('Hello'),
            )
        ],
      ),
    );
  }
}

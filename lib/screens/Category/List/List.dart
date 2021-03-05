import 'package:app_big/state/Categories.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListWidget extends StatelessWidget {
  ListWidget();
  @override
  build(BuildContext context) {
    Categories categories = Provider.of<Categories>(context);
    List<Category> items = categories.categories;
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              for (var i = 0; i < items.length; i++)
                ListTile(
                  title: Text(items[i].title),
                )
            ],
          ),
        )
      ],
    );
  }
}

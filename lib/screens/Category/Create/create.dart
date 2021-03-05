import 'package:flutter/material.dart';
// import './../../../widgets/TextInput.dart';

import 'package:app_big/widgets/TextInput.dart';
import 'package:app_big/state/Categories.dart';
import 'package:provider/provider.dart';

class Create extends StatefulWidget {
  Function onCreate;
  Create();
  createState() {
    return CreateState();
  }
}

class CreateState extends State {
  String categoryTitle;
  Function onCreate;

  String categoryDescription;
  List categories = [];
  CreateState();
  build(BuildContext context) {
    Categories categories = Provider.of<Categories>(context);
    return Container(
        child: Column(
      children: [
        // TextFormField(
        //   onChanged: (data) {
        //     print(data);
        //     this.categoryName = data;
        //   },
        // ),
        TextInput(
          label: 'Category Title',
          onType: (data) {
            this.categoryTitle = data;
          },
        ),
        TextInput(
          label: 'Category Description',
          onType: (data) {
            this.categoryDescription = data;
          },
          lines: 3,
        ),
        RaisedButton(
          onPressed: () {
            Category category = Category(
                title: this.categoryTitle,
                description: this.categoryDescription);

            categories.add(category);
          },
          child: Text('Create'),
        ),
        Expanded(
          child: ListView(
            children: [
              for (var index = 0;
                  index < this.categories.length;
                  index = index + 1)
                Text('${this.categories[index]}')
            ],
          ),
        )
      ],
    ));
  }
}

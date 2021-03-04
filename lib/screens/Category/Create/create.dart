import 'package:flutter/material.dart';
// import './../../../widgets/TextInput.dart';

import 'package:app_big/widgets/TextInput.dart';

class Create extends StatefulWidget {
  Function onCreate;
  Create({this.onCreate});
  createState() {
    return CreateState(onCreate: this.onCreate);
  }
}

class CreateState extends State {
  String categoryTitle;
  Function onCreate;

  String categoryDescription;
  List categories = [];
  CreateState({this.onCreate});
  build(BuildContext context) {
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
            Map category = {
              'title': this.categoryTitle,
              'description': this.categoryDescription,
            };
            // this.categories.add(category);
            var newCategories = [...this.categories, category];
            this.onCreate(newCategories);
            // setState(() {
            //   this.categories = newCategories;
            //   this.categoryTitle = '';
            //   this.categoryDescription = '';
            // });
            // print(this.categories);
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

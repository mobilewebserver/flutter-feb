import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  build(BuildContext context) {
    Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;
    print(args);
    String title = args['title'];
    String categoryId = args['categoryId'];

    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Column(
          children: [
            Text(title),
            RaisedButton(
              onPressed: () {
                print('User is interacting...');
                Navigator.of(context).pushNamed('/store');
              },
              child: Text('Go To store'),
            )
          ],
        ),
      ),
    );
  }
}

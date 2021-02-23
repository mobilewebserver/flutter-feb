import 'package:flutter/material.dart';
import 'package:app_big/widgets/Link.dart';

class HomeScreen extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Store 2021'),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              "Welcome",
              style: TextStyle(fontSize: 40),
            ),
            GoTo(label: "Electronics", route: '/products', state: {
              'title': 'Welcome to Electronic',
              'categoryId': '123',
            }),
            GoTo(label: "Plants", route: '/products', state: {
              'title': 'Welcome to Plants',
              'categoryId': '9090',
            }),
            GoTo(label: "Books", route: '/products', state: {
              'title': 'Welcome to Books',
              'categoryId': '9091',
            }),
            GoTo(label: "Clothes", route: '/products', state: {
              'title': 'Welcome to Clothes',
              'categoryId': '9092',
            }),
            GoTo(
              label: "Store",
              route: '/store',
            ),
            RaisedButton(
              onPressed: () {
                print('User is interacting...');
                Navigator.of(context).pushNamed('/products', arguments: {
                  'title': 'Electronics',
                  'isLatest': false,
                  'noOfProducts': 200
                });
              },
              child: Text('Go to products with some data'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Store -->"),
            RaisedButton(
              onPressed: () {
                print('User is interacting...');

                Navigator.of(context).pushNamed('/');
                // Navigator.of(context).pop(); // Store Screen will be Removed
                // // Navigator.of(context).pop(); // Products Screen will be Removed
              },
              child: Text('Go To Home'),
            )
          ],
        ),
      ),
    );
  }
}

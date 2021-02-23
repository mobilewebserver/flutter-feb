import 'package:flutter/material.dart';

class GoTo extends StatelessWidget {
  String label;
  String route;
  Map<String, dynamic> state;

  GoTo({this.label, this.route, this.state}) {}
  build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        print('User is interacting...');
        Navigator.of(context).pushNamed('${this.route}', arguments: this.state);
      },
      child: Text('Go To ${this.label}'),
    );
  }
}

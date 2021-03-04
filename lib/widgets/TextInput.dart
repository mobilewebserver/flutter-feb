import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String label;
  Function onType;
  int lines;
  TextInput({this.label, this.onType, this.lines});
  build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        maxLines: this.lines,
        onChanged: this.onType,
        decoration: InputDecoration(labelText: this.label),
      ),
    );
  }
}

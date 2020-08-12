import 'package:flutter/material.dart';
import 'package:nlw_flutter/theme/theme.dart';

class DropdownEditor extends StatefulWidget {
  @override
  _DropdownEditorState createState() => _DropdownEditorState();
}

class _DropdownEditorState extends State<DropdownEditor> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButton<String>(
        isExpanded: true,
        dropdownColor: appTheme().backgroundColor,
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_downward,
          color: appTheme().accentColor,
        ),
        iconSize: 16,
        elevation: 16,
        style: TextStyle(
          color: Colors.white,
        ),
        underline: Container(
          height: 2,
          color: appTheme().accentColor,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>['One', 'Two', 'Free', 'Four']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

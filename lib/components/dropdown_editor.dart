import 'package:flutter/material.dart';
import 'package:nlw_flutter/theme/theme.dart';

class DropdownEditor extends StatefulWidget {
  final itens;
  final hintText;
  final ValueChanged<void> dropdownSelectedItem;

  const DropdownEditor(
      {@required this.itens,
      @required this.dropdownSelectedItem,
      @required this.hintText});

  @override
  _DropdownEditorState createState() => _DropdownEditorState();
}

class _DropdownEditorState extends State<DropdownEditor> {
  String ddValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButton<String>(
        hint: Text(
          widget.hintText,
          style: TextStyle(color: Colors.white),
        ),
        value: ddValue,
        isExpanded: true,
        dropdownColor: appTheme().backgroundColor,
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
          widget.dropdownSelectedItem(newValue);
          setState(() {
            ddValue = newValue;
            return newValue;
          });
        },
        items: widget.itens.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}

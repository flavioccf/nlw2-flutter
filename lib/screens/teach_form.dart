import 'package:flutter/material.dart';

class TeachForm extends StatefulWidget {
  TeachForm({Key key}) : super(key: key);

  @override
  _TeachFormState createState() => _TeachFormState();
}

class _TeachFormState extends State<TeachForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 18,
      )),
    );
  }
}

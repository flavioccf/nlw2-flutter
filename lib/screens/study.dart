import 'package:flutter/material.dart';
import 'package:nlw_flutter/components/dropdown_editor.dart';
import 'package:nlw_flutter/components/editor.dart';
import 'package:nlw_flutter/components/teacher_card.dart';
import 'package:nlw_flutter/theme/theme.dart';

class Study extends StatefulWidget {
  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> {
  final TextEditingController _controllerSubject = TextEditingController();
  final String _labelFieldSubject = 'Matéria';
  final String _hintFieldSubject = 'Escolha a matéria';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 18,
      )),
      body: Column(
        children: <Widget>[
          Container(
            color: appTheme().primaryColor,
            child: Column(
              children: [
                DropdownEditor(),
                Editor(
                  _controllerSubject,
                  label: _labelFieldSubject,
                  hint: _hintFieldSubject,
                ),
                Editor(
                  _controllerSubject,
                  label: _labelFieldSubject,
                  hint: _hintFieldSubject,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                TeacherCard(
                  avatar:
                      'https://avatars3.githubusercontent.com/u/26256201?s=460&u=5311cec62d5fc06c305f6bda597bac2905d9cb76&v=4',
                  name: 'Flavio Carvalho',
                  subject: 'Guitarra',
                  bio: 'Hello there 👋',
                  price: '80',
                  whatsapp: '55129812222222',
                ),
                TeacherCard(
                  avatar:
                      'https://avatars3.githubusercontent.com/u/26256201?s=460&u=5311cec62d5fc06c305f6bda597bac2905d9cb76&v=4',
                  name: 'Flavio Carvalho',
                  subject: 'Guitarra',
                  bio: 'Hello there 👋',
                  price: '80',
                  whatsapp: '55129812222222',
                ),
                TeacherCard(
                  avatar:
                      'https://avatars3.githubusercontent.com/u/26256201?s=460&u=5311cec62d5fc06c305f6bda597bac2905d9cb76&v=4',
                  name: 'Flavio Carvalho',
                  subject: 'Guitarra',
                  bio: 'Hello there 👋',
                  price: '80',
                  whatsapp: '55129812222222',
                ),
                TeacherCard(
                  avatar:
                      'https://avatars3.githubusercontent.com/u/26256201?s=460&u=5311cec62d5fc06c305f6bda597bac2905d9cb76&v=4',
                  name: 'Flavio Carvalho',
                  subject: 'Guitarra',
                  bio: 'Hello there 👋',
                  price: '80',
                  whatsapp: '55129812222222',
                ),
                TeacherCard(
                  avatar:
                      'https://avatars3.githubusercontent.com/u/26256201?s=460&u=5311cec62d5fc06c305f6bda597bac2905d9cb76&v=4',
                  name: 'Flavio Carvalho',
                  subject: 'Guitarra',
                  bio: 'Hello there 👋',
                  price: '80',
                  whatsapp: '55129812222222',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

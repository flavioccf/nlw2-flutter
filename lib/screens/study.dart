import 'package:flutter/material.dart';
import 'package:nlw_flutter/components/dropdown_editor.dart';
import 'package:nlw_flutter/components/editor.dart';
import 'package:nlw_flutter/components/teacher_card.dart';
import 'package:nlw_flutter/theme/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Study extends StatefulWidget {
  @override
  _StudyState createState() => _StudyState();
}

class _StudyState extends State<Study> {
  TimeOfDay time;
  String categoryItem;
  String weekDayItem;
  @override
  void initState() {
    super.initState();
  }

  void _dropDownCategoryItem(newItem) {
    setState(() {
      categoryItem = newItem;
    });
  }

  void _dropDownWeekDayItem(newItem) {
    setState(() {
      weekDayItem = newItem;
    });
  }

  final TextEditingController _controllerTime = TextEditingController();
  String _labelFieldTime = 'Horário';
  final String _hintFieldTime = 'Escolha o horário';
  final dropDownItens = [
    'Violão',
    'Guitarra',
    'Baixo',
    'Bateria',
    'Violino',
    'Teclado',
    'Gaita'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 18,
      )),
      body: SlidingUpPanel(
        minHeight: 80,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
        color: appTheme().primaryColor,
        panel: Column(
          children: [
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Encontrar um músico",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 21.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            DropdownEditor(
              hintText: 'Selecione a categoria',
              dropdownSelectedItem: _dropDownCategoryItem,
              itens: dropDownItens,
            ),
            DropdownEditor(
              hintText: 'Selecione o dia da semana',
              dropdownSelectedItem: _dropDownWeekDayItem,
              itens: [
                'Segunda',
                'Terça',
                'Quarta',
                'Quinta',
                'Sexta',
                'Sábado',
                'Domingo'
              ],
            ),
            GestureDetector(
              onTap: () {
                showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((value) {
                  setState(() {
                    time = value;
                    _labelFieldTime = value.format(context);
                  });
                });
              },
              child: AbsorbPointer(
                child: Editor(
                  _controllerTime,
                  label: _labelFieldTime,
                  hint: _hintFieldTime,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: RaisedButton(
                color: appTheme().primaryColorDark,
                padding: EdgeInsets.all(8),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Buscar',
                    textAlign: TextAlign.center,
                  ),
                ),
                onPressed: () =>
                    {print(categoryItem), print(weekDayItem), print(time)},
              ),
            )
          ],
        ),
        body: ListView(
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
    );
  }
}

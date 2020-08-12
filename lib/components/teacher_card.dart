import 'package:flutter/material.dart';
import 'package:nlw_flutter/theme/theme.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';

class TeacherCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String subject;
  final String bio;
  final String price;
  final String whatsapp;

  const TeacherCard({
    this.avatar,
    this.name,
    this.subject,
    this.bio,
    this.price,
    this.whatsapp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: appTheme().primaryColor,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  avatar,
                ),
              ),
              title: Text(name),
              subtitle: Text(subject),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                bio,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: appTheme().primaryColor),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Preço hora: $price'),
                  ),
                  RaisedButton(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Image.asset(
                              'assets/images/icons/whatsapp.png',
                              fit: BoxFit.scaleDown,
                              height: 21,
                            ),
                          ),
                          Text(
                            'Entrar em contato',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {
                      FlutterOpenWhatsapp.sendSingleMessage(
                          whatsapp, 'Hey! Te vi no Musify');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

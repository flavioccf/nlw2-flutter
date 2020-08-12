import 'package:flutter/material.dart';
import 'package:nlw_flutter/widgets/app_dependencies.dart';

import '../theme/theme.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    final dependencies = AppDependencies.of(context);

    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.contain,
        height: 18,
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Aprenda a tocar online',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w100),
              ),
              padding: EdgeInsets.all(8),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Image.asset(
                'assets/images/landing.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Image.asset(
                              'assets/images/icons/study.png',
                              fit: BoxFit.scaleDown,
                              height: 16,
                            ),
                          ),
                          Text(
                            'Aprender',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => {
                            Navigator.pushNamed(context, '/study'),
                          }),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                      color: Colors.grey[600],
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Image.asset(
                              'assets/images/icons/give-classes.png',
                              fit: BoxFit.scaleDown,
                              height: 16,
                            ),
                          ),
                          Text(
                            'Dar aulas',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'Archivo',
                            ),
                          ),
                        ],
                      ),
                      onPressed: () => {
                            Navigator.pushNamed(context, '/teach_form'),
                          }),
                ),
              ],
            ),
            Container(
              child: FutureBuilder<dynamic>(
                future: dependencies.musifyWebClient.connections(),
                builder:
                    (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      'Total de ${snapshot.data['total']} conexões já realizadas',
                      style: TextStyle(color: appTheme().primaryColor),
                    );
                  }
                  return Text(
                    'Realize novas conexões!',
                    style: TextStyle(color: appTheme().primaryColor),
                  );
                },
              ),
              padding: EdgeInsets.all(8),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nlw_flutter/http/webclients/musify_webclient.dart';
import 'package:nlw_flutter/routes/routes.dart';
import 'package:nlw_flutter/theme/theme.dart';
import 'package:nlw_flutter/widgets/app_dependencies.dart';

import 'theme/theme.dart';

void main() {
  runApp(MusifyApp(
    musifyWebClient: MusifyWebClient(),
  ));
}

class MusifyApp extends StatelessWidget {
  final MusifyWebClient musifyWebClient;

  MusifyApp({
    @required this.musifyWebClient,
  });
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppDependencies(
      musifyWebClient: musifyWebClient,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme(),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int connections = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: routeList(),
      theme: appTheme(),
      darkTheme: darkTheme(),
    );
  }
}

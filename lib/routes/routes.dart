import 'package:nlw_flutter/screens/landing.dart';
import 'package:nlw_flutter/screens/study.dart';
import 'package:nlw_flutter/screens/teach_form.dart';

routeList() {
  return {
    '/': (context) => Landing(),
    '/study': (context) => Study(),
    '/teach_form': (context) => TeachForm(),
  };
}

import 'package:flutter/cupertino.dart';
import 'package:nlw_flutter/http/webclients/musify_webclient.dart';

class AppDependencies extends InheritedWidget {
  final MusifyWebClient musifyWebClient;

  AppDependencies({
    @required this.musifyWebClient,
    @required Widget child,
  }) : super(child: child);

  static AppDependencies of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppDependencies>();

  @override
  bool updateShouldNotify(AppDependencies oldWidget) {
    return musifyWebClient != oldWidget.musifyWebClient;
  }
}

//INFORMATION ON INHERITED WIDGETS
//https://api.flutter.dev/flutter/widgets/InheritedWidget-class.html

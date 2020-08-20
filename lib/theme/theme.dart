import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      fontFamily: 'Poppins',
      backgroundColor: Color(0xff000000),
      scaffoldBackgroundColor: Color(0xff000000),
      primaryColor: Color(0xff1db954),
      primaryColorDark: Color(0xff137736),
      primaryColorLight: Color(0xff36E071),
      accentColor: Color(0xff137736),
      textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            color: Colors.white,
          ),
          headline1: TextStyle(
            color: Colors.white,
          ),
          headline2: TextStyle(
            color: Colors.white,
          ),
          headline3: TextStyle(
            color: Colors.white,
          ),
          headline4: TextStyle(
            color: Colors.white,
          ),
          headline6: TextStyle(
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            color: Color(0xff1db954),
            fontWeight: FontWeight.w700,
          ),
          subtitle2: TextStyle(
            color: Colors.white,
          ),
          caption: TextStyle(
            color: Colors.white,
          )),
      buttonTheme: ButtonThemeData(
        buttonColor: Color(0xff1db954),
        highlightColor: Color(0xff1ed760),
        splashColor: Color(0xff1ed760),
        textTheme: ButtonTextTheme.primary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Color(0xff1db954),
        hoverColor: Color(0xff1ed760),
      ),
      cardTheme: CardTheme(
        color: Color(0xff000000),
        shadowColor: Color(0xff1db954),
      ));
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[900],
  );
}

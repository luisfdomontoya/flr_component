import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  //Para el tema light
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Primary Color
    primaryColor: primary,

    //AppBar Theme: estos serían los estilos para todos mis appBar
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //TextButton Theme: estos serían los estilos para todos mis TextButton
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
  );

  //Para el tema dark
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //color primario
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ));
}

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

    //FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.indigo,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    // AlertDialog: estos serían los estilos para todos mis AlertDialog, es decir
    // para las ventanas emergentes o modales.
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10)),
    ),

    // Inputs: me permite establecer algunos estilos globales a los inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
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

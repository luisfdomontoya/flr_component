// Llama el archivo de exportaciones llamado screens.dart
import 'package:flr_component/router/app_routes.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: ThemeData.light().copyWith(
        //Color primario
        primaryColor: Colors.indigo,

        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: Colors.red,
        ),
      ),
    );
  }
}

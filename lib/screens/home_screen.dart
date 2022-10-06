// import 'package:flr_component/screens/screens.dart';
import 'package:flr_component/router/app_routes.dart';
import 'package:flutter/material.dart';

/// El widget HomeScreen lo uso para crear mi pantalla inicial,
/// contiene una lista estática CON Separador de 10 elementos*/
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Components in Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(menuOptions[index].icon, color: Colors.indigo),
                title: Text(menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}

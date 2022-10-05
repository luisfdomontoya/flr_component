import 'package:flutter/material.dart';

/// El widget Listview1Screen me crea una lista de elementos
/// SIN Separador entre los elementos de la lista */
class Listview1Screen extends StatelessWidget {
  final options = const ['Megaman', 'Metal', 'Super Smash'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Type 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.access_time_sharp),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}

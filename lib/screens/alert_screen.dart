import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.indigo,
          //     shape: const StadiumBorder(),
          //     elevation: 0),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Show Alert',
              style: TextStyle(fontSize: 16),
            ),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context); //muestra la última pantalla que está en el
          //stack de cartas. En este caso sería el Home Screen.
        },
      ),
    );
  }
}

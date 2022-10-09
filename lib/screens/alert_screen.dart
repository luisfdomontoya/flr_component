import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Alert Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('I\'m an Cupertino Alert!'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Android Alert Title'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('I\'m an Android Alert!'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Text(
                'Show Alert',
                style: TextStyle(fontSize: 16),
              ),
            ),
            onPressed: () => Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

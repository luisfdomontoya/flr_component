import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('LF'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage:
              NetworkImage('https://pngimg.com/uploads/avatar/avatar_PNG9.png'),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

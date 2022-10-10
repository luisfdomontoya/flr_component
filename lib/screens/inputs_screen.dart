import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Name',
                hintText: 'Username',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Lastname',
                hintText: 'Lastname',
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Email',
                hintText: 'correo@correo.co',
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              CustomInputField(
                labelText: 'Password',
                hintText: 'Enter a password',
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

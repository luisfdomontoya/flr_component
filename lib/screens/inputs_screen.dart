import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> formValues = {
      'first_name': 'Luis',
      'last_name': 'Montoya',
      'email': 'luismontoya@gmail.com',
      'password': '123456',
      'role': 'admin',
    };

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
          child: Form(
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Name',
                  hintText: 'Username',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Lastname',
                  hintText: 'Lastname',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Email',
                  hintText: 'correo@correo.co',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Password',
                  hintText: 'Enter a password',
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Save'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

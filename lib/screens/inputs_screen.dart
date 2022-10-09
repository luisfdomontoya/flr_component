import 'package:flutter/material.dart';

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
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                // value contiene el valor del input
                onChanged: (value) => print('value: $value'),
                validator: (value) {
                  if (value == null) return 'This field is required';
                  return value.length < 3 ? 'At least 3 characters' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  labelText: 'Name',
                  helperText: 'Only words',
                  counterText: '3 characters',
                  suffixIcon: Icon(Icons.group_outlined),
                  prefixIcon: Icon(Icons.verified_user_outlined),
                  icon: Icon(Icons.assignment_ind_outlined),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.only(
                  //     bottomLeft: Radius.circular(10),
                  //     bottomRight: Radius.circular(10),
                  //   ),
                  // ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

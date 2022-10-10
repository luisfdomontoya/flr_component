import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 characters',
        suffixIcon: Icon(suffixIcon),
        prefixIcon: const Icon(Icons.verified_user_outlined),
        icon: Icon(icon),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     bottomRight: Radius.circular(10),
        //   ),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType, //establezco qué tipo de input es, por ejemplo
      //de texto o email. Para inputs de tipo contraseña se usa otra propiedad.
      obscureText:
          obscureText, //Se usa para los input tipo contraseña y permite que
      //los caracteres que ingresemos se vean como puntos.
      // value contiene el valor del input
      onChanged: (value) => formValues[formProperty] = value,
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
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: const Icon(Icons.verified_user_outlined),
        icon: icon == null ? null : Icon(icon),
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

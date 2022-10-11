import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Creo una key de tipo form (FormState) que usaré en mi widget Form.
    //Este key se usa para mantener el estado de ese formulario.
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

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
            key: myFormKey, //asignamos el key al formulario
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Name',
                  hintText: 'Username',
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Lastname',
                  hintText: 'Lastname',
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Email',
                  hintText: 'correo@correo.co',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Password',
                  hintText: 'Enter a password',
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode()); //quita el
                    //teclado de la pantalla apenas doy clic sobre el botón.

                    //el primer ! es para negar y el segundo ! es para decirle a
                    //flutter que confíe en nosotros que currentState no va a
                    //llegar nullo. Otra cosa que se puede hacer es la evalucación
                    //con el operador ?? o con el operador ternario.
                    //.validate() me dice si el formulario es válido o no, y
                    //además dispara todas las validaciones de todos los inputs
                    //que tenga el formulario.
                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no válido');
                      return;
                    }
                    print(formValues);
                  },
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

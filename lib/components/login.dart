import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: <Widget>[
            FormBuilderTextField(
              name: 'Username',
              decoration: const InputDecoration(
                labelText: 'Enter your username',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.numeric(context),
                FormBuilderValidators.max(context, 70),
              ]),
              keyboardType: TextInputType.name,
            ),
            FormBuilderTextField(
              name: 'Password',
              decoration: const InputDecoration(
                labelText: 'Enter your password',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.numeric(context),
                FormBuilderValidators.max(context, 70),
              ]),
              keyboardType: TextInputType.visiblePassword,
            ),
            Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: const ElevatedButton(
                child: Text('Submit'),
                onPressed: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

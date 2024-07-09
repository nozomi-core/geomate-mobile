import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  final _editControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: _editControl,
          decoration: const InputDecoration.collapsed(hintText: "Username")
        ),
        TextButton(
            onPressed: () => {
              debugPrint("pressed: ${_editControl.text}")
            },
            child: Text("Login"))
      ]),
    );
  }
}
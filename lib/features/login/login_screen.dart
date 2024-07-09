import 'package:flutter/material.dart';
import 'package:mobile/resource/local_string.dart';
import 'package:mobile/resource/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(Resource.get(Strings.title)),
    );
  }
}
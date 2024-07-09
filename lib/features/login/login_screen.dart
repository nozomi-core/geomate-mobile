import 'package:flutter/material.dart';
import 'package:mobile/strings/strings.dart';

import '../../strings/local_string.dart';

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
import 'package:flutter/material.dart';
import 'package:mobile/features/home/home_screen.dart';
import 'package:mobile/features/login/login_screen.dart';
import 'package:mobile/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() {
  //Loads selected .env mode file from the CLI config
  const environmentMode = String.fromEnvironment('MODE', defaultValue: 'development');
  dotenv.load(fileName: ".env.$environmentMode").then((value) {
      runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.login: (context) => const LoginScreen()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
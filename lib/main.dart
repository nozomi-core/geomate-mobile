import 'package:flutter/material.dart';
import 'package:mobile/app/app.dart';
import 'package:mobile/features/home/home_screen.dart';
import 'package:mobile/features/login/login_screen.dart';
import 'package:mobile/app/routes.dart';

void main() {
  setupGeoMateApp(() {
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
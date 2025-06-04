import 'package:flutter/material.dart';
import 'pages/splash_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/info_page.dart';

void main() {
  runApp(const AnimalInfoApp());
}

class AnimalInfoApp extends StatelessWidget {
  const AnimalInfoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal Info App',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/info': (context) => const InfoPage(),
      },
      initialRoute: '/',
    );
  }
}

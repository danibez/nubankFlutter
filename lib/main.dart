import 'package:flutter/material.dart';
import 'package:nubank/conta/conta.dart';
import 'package:nubank/homeScreen/appbody.dart';
import 'package:nubank/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AppBody(),
        '/profile': (context) => const Profile(),
        '/minhaConta': (context) => const MinhaConta()
      },
    );
  }
}

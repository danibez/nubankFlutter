import 'package:flutter/material.dart';
import 'package:nubank/conta/conta.dart';
import 'package:nubank/homeScreen/appbody.dart';
import 'package:nubank/profile.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> main() async {

  const keyApplicationId = '1cJocS0NTUEkciXEyZuWApiy4YcAzkICO0HElEnW';
  const keyClientKey = '8TP8HTYTRP5qziS8hvP4cZDB1OH9wsMutgvdOSgp';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(keyApplicationId, keyParseServerUrl,
    clientKey: keyClientKey, debug: true);

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

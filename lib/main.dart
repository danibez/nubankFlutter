import 'package:flutter/material.dart';
import 'package:nubank/appbody.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(icon: const Icon(Icons.visibility_outlined),
            color:  const Color(0xFFF5F5F5),
              onPressed: () {},
            ),
            IconButton(icon: const Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
              color:  const Color(0xFFF5F5F5),
              onPressed: () {},
            ),
            IconButton(icon: const Icon(Icons.mark_email_read_outlined, color: Color(0xFFF5F5F5)),
              color:  const Color(0xFFF5F5F5),
              onPressed: () {},
            ),
          ],
          leading: IconButton(
              style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll<Color>(Color(0xFFBA4DE3))),
              icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
              color: const Color(0xFFF5F5F5),
              onPressed: () {},
            ),
          backgroundColor: const Color(0xFF8A05BE),
        ),
        body: const AppBody()
      ),
    );
  }
}

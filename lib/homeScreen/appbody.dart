import 'package:flutter/material.dart';
import 'package:nubank/homeScreen/conta.dart';
import 'package:nubank/homeScreen/credito.dart';
import 'package:nubank/homeScreen/descubra.dart';
import 'package:nubank/homeScreen/emprestimo.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.visibility_outlined),
            color: const Color(0xFFF5F5F5),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.question_mark_rounded,
                color: Color(0xFFF5F5F5)),
            color: const Color(0xFFF5F5F5),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.mark_email_read_outlined,
                color: Color(0xFFF5F5F5)),
            color: const Color(0xFFF5F5F5),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          style: const ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll<Color>(Color(0xFFBA4DE3))),
          icon: const Icon(Icons.person_outline, color: Color(0xFFF5F5F5)),
          color: const Color(0xFFF5F5F5),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
        backgroundColor: const Color(0xFF8A05BE),
      ),
      body: ListView(
        children: const [
          Conta(),
          Divider(
            height: 1,
          ),
          Padding(padding: EdgeInsets.all(16), child: Credito()),
          Divider(
            height: 1,
          ),
          Padding(padding: EdgeInsets.all(16), child: Emprestimo()),
          Divider(
            height: 1,
          ),
          Padding(padding: EdgeInsets.all(16), child: Descubra())
        ],
      ),
    );
  }
}

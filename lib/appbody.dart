import 'package:flutter/material.dart';
import 'package:nubank/conta.dart';
import 'package:nubank/credito.dart';
import 'package:nubank/descubra.dart';
import 'package:nubank/emprestimo.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.all(15),
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: const [
              Conta(),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 35),
                child: Divider(height: 1,),
              ),
              Credito(),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 35),
                child: Divider(height: 1,),
              ),
              Emprestimo(),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 35),
                child: Divider(height: 1,),
              ),
              Descubra()
            ],
          ),
        );
  }
  
}
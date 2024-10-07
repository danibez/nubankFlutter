import 'package:flutter/material.dart';
import 'package:nubank/conta/historico.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.question_mark_rounded,
                color: Color(0xFFF5F5F5)),
            color: const Color(0xFFF5F5F5),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_sharp, color: Color(0xFFF5F5F5)),
          color: const Color(0xFFF5F5F5),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFF8A05BE),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: Card(
            elevation: 0,
            color: Colors.white,
            child: ListTile(
              title: Text("Saldo Disponível"),
              subtitle: Text("R\$13.503,23"),
            ),
          )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: ListTile(
            title: Text("Saldo Separado"),
            subtitle: Text("R\$250,00"),
            leading: Icon(Icons.wallet_rounded),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16),child:  ListTile(
            title: Text("Gastos Previstos"),
            subtitle: Text("R\$2.203,51"),
            leading: Icon(Icons.monitor_heart_outlined),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          )),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 16),child:  ListTile(
            title: Text("Meus Investimentos"),
            subtitle: Text("Organize e conquiste objetivos"),
            leading: Icon(Icons.attach_money_rounded),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
          )),
          Container(
              alignment: Alignment.centerLeft,
              height: 150,
              width: double.infinity,
              child: ListView(
                  itemExtent: 110,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.move_down_rounded),
                        onPressed: () {},
                      ),
                      const Text(
                        "Depositar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.payment_outlined),
                        onPressed: () {},
                      ),
                      const Text(
                        "Pagar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.replay_outlined),
                        onPressed: () {},
                      ),
                      const Text(
                        "Débito Automático",
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.handshake_outlined),
                        onPressed: () {},
                      ),
                      const Text(
                        "Empréstimo",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.transform_rounded),
                        onPressed: () {},
                      ),
                      const Text(
                        "Transferir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                    Column(children: [
                      IconButton.filledTonal(
                        style: const ButtonStyle(
                          fixedSize:
                              WidgetStatePropertyAll<Size>(Size.fromRadius(40)),
                        ),
                        icon: const Icon(Icons.signal_cellular_alt),
                        onPressed: () {},
                      ),
                      const Text(
                        "Investir",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ])),
          const Divider(),
          Padding(padding: const EdgeInsets.all(16),child: Card(
            child: ListTile(
              title: RichText(
                  text: const TextSpan(
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Até '),
                  TextSpan(
                      text: 'R\$50.000,00 ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: 'disponíveis para empréstimo')
                ],
              )),
              leading: const Icon(Icons.handshake_outlined),
            ),
          )),
          const Padding(padding: EdgeInsets.all(16),child: 
            Historico())
        ],
      ),
    );
  }
}

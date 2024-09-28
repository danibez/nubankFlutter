import 'package:flutter/material.dart';

class Conta extends StatelessWidget {
  const Conta({super.key});

  @override
  Widget build(Object context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Conta",
            style: TextStyle(fontSize: 24),
          ),
          Icon(Icons.arrow_forward_ios_outlined),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "R\$1000,00",
        style: TextStyle(fontSize: 26),
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            IconButton.filledTonal(
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(30)),
              ),
              icon: const Icon(Icons.pix_outlined),
              onPressed: () {},
            ),
            const Text("Pix")
          ]),
          Column(children: [
            IconButton.filledTonal(
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(30)),
              ),
              icon: const Icon(Icons.money),
              iconSize: 30,
              color: Colors.black,
              onPressed: () {},
            ),
            const Text("Pagamentos")
          ]),
          Column(children: [
            IconButton.filledTonal(
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(30)),
              ),
              icon: const Icon(
                Icons.qr_code,
                size: 30,
              ),
              onPressed: () {},
            ),
            const Text("QRcode")
          ]),
          Column(children: [
            IconButton.filledTonal(
              style: const ButtonStyle(
                fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(30)),
              ),
              icon: const Icon(
                Icons.attach_money,
                size: 30,
              ),
              onPressed: () {},
            ),
            const Text("Transferir")
          ]),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      const Card(
        elevation: 0,
        child: ListTile(
          title: Text("Meus Cartões"),
          leading: Icon(Icons.credit_card),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Card(
        elevation: 0,
        child: Container(
            padding: const EdgeInsets.all(10),
            child: const ListTile(
              title: Text("Guarde seu dinheiro em caixinhas"),
              subtitle: Text("Acessando a área de planejamento"),
            )),
      )
    ]);
  }
}

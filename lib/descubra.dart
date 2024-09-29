import 'package:flutter/material.dart';

class Descubra extends StatelessWidget {
  const Descubra({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Descubra Mais",
          style: TextStyle(fontSize: 24),
        ),
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/seguro.png',
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        child: Text(
                          'Seguro de Vida',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                        child: Text(
                        'Cuide bem de quem você ama de um jeito simples',
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      )),
                      Padding(padding: EdgeInsets.only(bottom: 10, top: 5),child:
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                            Color(0xFF8A05BE),
                          )),
                          onPressed: () {},
                          child: const Text(
                            "Conhecer",
                            style: TextStyle(color: Colors.white),
                          )))
                    ]),
              )
            ],
          ),
        )
      ],
    );
  }
}

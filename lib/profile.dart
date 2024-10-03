import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 230, 229, 229),
          bottom: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.sizeOf(context).height*0.2),
          child: Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 30), child: Column(
            children: [
              Card(
                color: const Color.fromARGB(255, 230, 229, 229),
            elevation: 0,
            child: ListTile(
              title: const Text("Alex"),
              subtitle: const Text("Agência 0000 - Conta 123456-7\nBanco 0123 - Nu Pagamentos SA"),
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.add_photo_alternate_outlined)),
            ),
          ),
          Card(
            elevation: 0,
            child: ListTile(
              title: const Text("Nucoin"),
              leading: const Icon(Icons.attach_money_rounded),
              trailing: ElevatedButton(
                onPressed: (){}, 
                child: const Text("Novo")),
            ),
          ),
            ],
          ))),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.close_rounded)),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/profile/test');
            }, icon: const Icon(Icons.help_outline_rounded)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))
          ],
        ),
        body: ListView(
          shrinkWrap: true,
            // padding: EdgeInsets.all(8),
            children: const [
              Padding(padding: EdgeInsets.all(10),child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: 
                  ListTile(
                      title: Text("Seguro de Vida"),
                      leading: Icon(Icons.favorite))),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              )),
              Divider(),
              Padding(padding: EdgeInsets.all(10),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text("Configurar"),
                      leading: Icon(Icons.settings),
                      subtitle: Text("Cartão, Conta, Pix, Perfil"),)),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              )),
              Divider(),
              Padding(padding: EdgeInsets.all(10),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: 
                  ListTile(
                      title: Text("Segurança"), leading: Icon(Icons.security))),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              )),
              Divider(),
              Padding(padding: EdgeInsets.all(10),child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Expanded(
                    child: 
                  ListTile(
                      title: Text("Documentos"),
                      leading: Icon(Icons.picture_as_pdf))),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ))
            ],
          ),
        ));
  }
}

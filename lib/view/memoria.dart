import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 400,
                height: 650,
                child: Image.asset("lib/imagens/6_teste.png"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'JOGO DA MEMÓRIA',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade600,
        ));
  }
}

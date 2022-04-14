import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Tela3State();
}

class _Tela3State extends State<Tela3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(
              width: 400,
              height: 650,
              child: Image.asset("lib/imagens/8_teste.png"),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text(
            'JOGO DE RACIOCÍNIO',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade600,
        ));
  }
}

import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Tela2State();
}

class _Tela2State extends State<Tela2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: <Widget>[
            SizedBox(
              width: 400,
              height: 650,
              child: Image.asset("lib/imagens/7_teste.png"),
            ),
          ],
        ),
        appBar: AppBar(
          title: const Text(
            'JOGO DAS CORES',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade600,
        ));
  }
}

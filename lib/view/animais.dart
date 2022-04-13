import 'package:flutter/material.dart';

class Tela4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Tela4State();
}

class _Tela4State extends State<Tela4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                width: 400,
                height: 650,
                child: Image.asset("lib/imagens/9_teste.png"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(
            'FIGURA DE ANIMAIS',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo.shade600,
        ));
  }
}

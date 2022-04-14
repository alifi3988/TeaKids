import 'package:flutter/material.dart';

class Recuperar extends StatefulWidget {
  const Recuperar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RecuperarState();
}

//ainda em criação
class _RecuperarState extends State<Recuperar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: const Text("    RECUPERAR A SENHA"),
    );
  }
}

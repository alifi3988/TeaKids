import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: const Center(
        child: Text(
          '''Informações sobre o App \nAplicativo desenvolvido por \nÁlifi Santos e Rafael Augusto\n FATEC Ribeirão Preto/SP''',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
    );
  }
}

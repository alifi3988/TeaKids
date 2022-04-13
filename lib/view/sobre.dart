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
        title: Text('Sobre'),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: Container(
        child: Text("    Informações sobre o App"),
      ),
    );
  }
}

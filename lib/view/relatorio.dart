import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Relatorio extends StatefulWidget {
  const Relatorio({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RelatorioState();
}

class _RelatorioState extends State<Relatorio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Relatório'),
        backgroundColor: Colors.indigo.shade600,
      ),
      body: const SizedBox(
        child: Text("    Nessa campo mostrará informações sobre o andamento"),
      ),
    );
  }
}

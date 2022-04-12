import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PrincipaState();
}

class _PrincipaState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color.fromRGBO(76, 175, 80, 1),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        //child: GridView.count(
        //crossAxisCount: 2,
        children: <Widget>[
          botaoJogos("Jogo da memória", "t3"),
          const SizedBox(height: 25),
          botaoJogos("Jogo das cores", "t4"),
          const SizedBox(height: 25),
          botaoJogos("Jogo de Raciocínio", "t5"),
          const SizedBox(height: 25),
          botaoJogos("Figura de animais", "t6"),
        ],
        //),
      ),
    );
  }

  botaoJogos(rotulo, tela) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          Navigator.pushNamed(context, tela);
        },
        child: Text(
          rotulo,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        style: ElevatedButton.styleFrom(
          primary: Colors.indigo.shade600,
        ),
      ),
    );
  }
}




//-------------------------------------------------------------------------------------------//
  /*botao() {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(Icons.home, size: 70),
            Text("Home", style: TextStyle(fontSize: 17.0))
          ],
        )),
      ),
    );
  }*/
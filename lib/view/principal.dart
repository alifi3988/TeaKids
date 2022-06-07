import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PrincipaState();
}

class _PrincipaState extends State<Principal> {
  var nomeUsuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: const Color.fromARGB(255, 5, 1, 228),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        children: <Widget>[
          const SizedBox(height: 20),
          botaoJogos("Jogo da memória", "t3"),
          const SizedBox(height: 25),
          botaoJogos("Descobrindo as cores", "t4"),
          const SizedBox(height: 25),
          botaoJogos("Jogo de Raciocínio", "t5"),
          const SizedBox(height: 25),
          botaoJogos("Figura de animais", "t6"),
          const SizedBox(height: 25),
          botaoJogos("Atividades", "t8"),
        ],
        //),
      ),
    );
  }

  //icone

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

  //Criação dos botão com imagem de cada jogo para ficar mais atrativo
  botaoJogo(tela, caminho) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          Navigator.pushNamed(context, tela);
        },
        child: Image.asset(caminho),
        /*Text(
          rotulo,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),*/
        style: ElevatedButton.styleFrom(
          primary: const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }

//-------------------------------------------------------------------------------------------//
  botao(caminho) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            //Image.network("ksdvjksbzdkvjbszç"), <<-- verificar ocm o professor se aqui teria como colocar imagem
            Divider(),
            Text("Home", style: TextStyle(fontSize: 17.0))
          ],
        )),
      ),
    );
  }
}

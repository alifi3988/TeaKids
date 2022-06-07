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
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        ///menu lateral
        child: Row(children: <Widget>[
          Container(
            color: const Color.fromARGB(255, 203, 200, 230),
            child: Scaffold(
              backgroundColor: Colors.blue[50],
              floatingActionButton: FloatingActionButton(
                /// botão flutuante no menu lateral
                child: const Text(
                  "Sobre",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.indigo.shade600,
                onPressed: () {
                  Navigator.pushNamed(context, 't9');
                },
              ),
            ),
          )
        ]),
      ),
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.indigo.shade600,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: const EdgeInsets.all(30.0),
        //child: GridView.count(
        //crossAxisCount: 2,
        children: <Widget>[
          //botaoJogo('t3', "lib/imagens/jogos_imagem/quebra_cabeca.png"),
          //const SizedBox(height: 25),
          botaoJogos("Jogo da memória", "t3"),
          const SizedBox(height: 25),
          botaoJogos("Jogo das cores", "t4"),
          const SizedBox(height: 25),
          botaoJogos("Jogo de Raciocínio", "t5"),
          const SizedBox(height: 25),
          botaoJogos("Figura de animais", "t6"),
          const SizedBox(height: 25),
          botaoJogos("Relatório", "t8"),
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

  menuLateral() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const  Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.border_color),
            title: const Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

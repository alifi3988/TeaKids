import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade600,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        children: <Widget>[
          const Text(
            "Faça o seu Cadastro",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 25),
          CaixaTexto("Nome", "Informe o seu nome"),
          const SizedBox(height: 15),
          CaixaTexto("E-mail", "Informe o seu e-mail"),
          const SizedBox(height: 15),
          CaixaTexto("Senha", "Informe a senha"),
          const SizedBox(height: 15),
          CaixaTexto("Conferir", "Reescreva a senha"),
          const SizedBox(height: 15),
          botao("Cadastrar"),
        ],
      ),
    );
  }
}

//Fiz um campo padronizado somente para entregar,
//mas pretendo modificar, por conta dos campos de senha e e-mail
CaixaTexto(campo, descricao) {
  return TextFormField(
      //controller: _mailInputController,
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade900,
      ),
      decoration: InputDecoration(
        labelText: campo,
        labelStyle: TextStyle(
          fontSize: 17,
          color: Colors.grey.shade600,
        ),
        hintText: descricao,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ));
}

botao(rotulo) {
  return SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
      //evento que será disparado quando o usuário
      //acionar o botão
      onPressed: () {
        //Pode usar aqui apra conferir as informações dos campos
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

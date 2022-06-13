import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../widgets/mensagem.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var txtNome = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var idUser = "";
  var idTabela = "";
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
          caixaTexto("Nome", "Informe o seu nome", txtNome, Icons.people),
          const SizedBox(height: 15),
          caixaTexto("E-mail", "Informe o seu e-mail", txtEmail, Icons.email),
          const SizedBox(height: 15),
          caixaTexto("Senha", "Informe a senha", txtSenha, Icons.lock,
              senha: true),
          const SizedBox(height: 15),
          //botão para cadastrar
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              //evento que será disparado quando o usuário
              //acionar o botão
              onPressed: () {
                inserirBanco(
                    txtEmail.text, txtSenha.text, txtNome.text, idUser);
              },

              child: const Text("Registrar",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

//Fiz um campo padronizado somente para entregar,
//mas pretendo modificar, por conta dos campos de senha e e-mail
  caixaTexto(texto, info, variavel, icone, {senha}) {
    return TextField(
        controller: variavel,
        obscureText: senha != null ? true : false,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade900,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(icone, color: const Color.fromARGB(255, 25, 0, 255)),
          prefixIconColor: const Color.fromARGB(255, 0, 60, 255),
          labelText: texto,
          labelStyle: const TextStyle(
              fontSize: 17, color: Color.fromARGB(255, 73, 118, 216)),
          hintText: info,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }

  //inserir no banco de dados o login e senha
  inserirBanco(email, senha, nome, idUser) {
    //criação das credenciais
    var cod1, cod2, cod3, cod4, cod5, cod6, cod7;
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((res) async {
      FirebaseFirestore.instance
          .collection('usuarios')
          .add({
            "uid": res.user!.uid.toString(),
            "nome": nome,
            "idSeg": cod1,
            "idTer": cod2,
            "idQur": cod3,
            "idQui": cod4,
            "idSex": cod5,
            "idSab": cod6,
            "idDom": cod7,
          })
          .then((value) {})
          .catchError((itError) {
            switch (itError.code) {
              default:
                erro(context, itError.code.toString());
            }
          });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Segunda',
        "valor": 'Não acessou',
      }).then((value) {
        cod1 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Terça',
        "valor": 'Não acessou',
      }).then((value) {
        cod2 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Quarta',
        "valor": 'Não acessou',
      }).then((value) {
        cod3 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Quinta',
        "valor": 'Não acessou',
      }).then((value) {
        cod4 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Sexta',
        "valor": 'Não acessou',
      }).then((value) {
        cod5 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Sábado',
        "valor": 'Não acessou',
      }).then((value) {
        cod6 = value.id.toString();
      });
      FirebaseFirestore.instance.collection('semana').add({
        "uid": res.user!.uid.toString(),
        "dia": 'Domingo',
        "valor": 'Não acessou',
      }).then((value) {
        cod7 = value.id.toString();
      });
      Navigator.pushReplacementNamed(context, 't1');
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi cadastrado.');
          break;
        case 'invalid-email':
          erro(context, 'O email é inválido.');
          break;
        default:
          erro(context, e.code.toString());
      }
    });
  }
}

// ignore: unnecessary_import
// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  //Declaração dos atributos que serão usado
  //s para
  //armazenar os dados informados pelo usuário
  final TextEditingController _mailInputController = TextEditingController();
  final TextEditingController _passwordINputController =
      TextEditingController();

  //Declaração de um atributo que identifica unicamente
  //o formulário
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 150,
              height: 150,
              child: Image.asset("lib/imagens/cabeca.png"),
            ),
            const SizedBox(height: 25),
            campoLogin(),
            const SizedBox(height: 20),
            campoSenha(),
            const SizedBox(height: 35),
            botao("Entrar"),

            //o botão login com o google, vai vir aqui
            //vamos add o ícone do facebook tbb

            const SizedBox(height: 140),
            cadastar(),
            const SizedBox(height: 10),
            recuperar(),
          ],
        ),
      ),
    );
  }

  //
  // CAMPO DE TEXTO
  //
  //CAMPO DO E-MAIL
  campoLogin() {
    return TextFormField(
        //variável associada
        validator: (value) {
          if (value!.length < 5) {
            return caixaDialogo("Erro, e-mail curto");
          } else if (!value.contains("@")) {
            return caixaDialogo("E-mail inválido");
          }
        },
        keyboardType: TextInputType.emailAddress, //mostrar o @ no teclado
        controller: _mailInputController,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade900,
        ),
        decoration: InputDecoration(
          labelText: "E-mail",
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade600,
          ),
          hintText: 'Informe o e-mail',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }

  //CAMPO DA SENHA
  campoSenha() {
    return TextFormField(
        //variável associada
        validator: (value) {
          if (value!.length < 6) {
            return caixaDialogo("A senhora deve ter pelo menos 6 caracteres");
          }
        },
        keyboardType: TextInputType.text,
        controller: _passwordINputController,
        obscureText: true,
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade900,
        ),
        decoration: InputDecoration(
          labelText: "Senha",
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.grey.shade600,
          ),
          hintText: 'Informe a senha',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ));
  }

  // BOTÃO
  botao(rotulo) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          Navigator.pushReplacementNamed(context, 't2');

          //validação do formulario
          //O método setState é usado para acessar
          //os dados fornecidos pelo usuário
          /*setState(() {
            String login = _mailInputController.text;
            String senha = _passwordINputController.text;
            // ignore: unrelated_type_equality_checks
            if (login == 'admin@' && senha == 'admin') {
              caixaDialogo('Seja Bem-Vindo(a)!');
              Navigator.pushReplacementNamed(context, 't2');
            } else {
              caixaDialogo(
                  'Erro no login!' + '\nLogin: ' + login + '\nSenha: ' + senha);
            }
          },);*/
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

  cadastar() {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, 't7');
      },
      style: TextButton.styleFrom(primary: Colors.black),
      child: Text(
        "Cadastre-se",
      ),
    );
    /*SizedBox(
      width: 200,
      height: 35,
      child: ElevatedButton(
        //evento que será disparado quando o usuário
        //acionar o botão
        onPressed: () {
          //validação do formulario

          if (formKey.currentState!.validate()) {
            //O método setState é usado para acessar
            //os dados fornecidos pelo usuário
            setState(() {
              caixaDialogo("Configurando próxima página...");
            });
          }
        },

        child: const Text(
          "Cadastar",
          style: TextStyle(fontSize: 24),
        ),

        style: ElevatedButton.styleFrom(
          primary: Colors.indigo.shade600,
        ),
      ),
    );*/
  }

  recuperar() {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, 't10');
      },
      style: TextButton.styleFrom(primary: Colors.black),
      child: const Text("Recuperar a senha"),
    );
  }

  //
  // CAIXA DE DIÁLOGO
  //

  caixaDialogo(msg) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(''),
            content: Text(msg),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();

                    setState(() {
                      _mailInputController.clear();
                      _passwordINputController.clear();
                    });
                  },
                  child: const Text('fechar')),
            ],
          );
        });
  }
}

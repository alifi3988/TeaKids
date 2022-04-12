import 'package:flutter/material.dart';
import 'package:kids/view/animais.dart';
import 'package:kids/view/cadastro.dart';
import 'package:kids/view/cores.dart';
import 'package:kids/view/login.dart';
import 'package:kids/view/memoria.dart';
import 'package:kids/view/principal.dart';
import 'package:kids/view/raciocinio.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TEA KIDS',
        initialRoute: 't1',
        routes: {
          't1': (context) => const Login(),
          't2': (context) => Principal(),
          't3': (context) => Tela1(),
          't4': (context) => Tela2(),
          't5': (context) => Tela3(),
          't6': (context) => Tela4(),
          't7': (context) => Cadastro(),
        },
      ),
    );

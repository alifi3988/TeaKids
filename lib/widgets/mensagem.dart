import 'package:flutter/material.dart';

  erro(context, msg) {
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
                  },
                  child: const Text('fechar')),
            ],
          );
        });
  }

  sucesso(context, String title) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Image.network('https://data.whicdn.com/images/179560327/original.gif'),
            
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('fechar')),
            ],
          );
        });
  }

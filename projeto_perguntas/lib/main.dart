import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  var perguntaSelecionada = 0;

  void responder() {
    print('Pergunta respondida.');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Pergunta respondida #02!');
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                print('Resposta 2 selecionada.');
              },
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: funcaoQueRetornaUmaOutraFuncao,
            ),
          ],
        ),
      ),
    );
  }
}

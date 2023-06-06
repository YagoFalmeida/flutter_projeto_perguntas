import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
    'Qual é o seu jogador de futebol favorito?',
    'Qual é o nome do seu pai?',
    'Qual é o nome da sua mãe?',
    'Qual é a sua idade?'
  ];

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  void responderMenos() {
    setState(() {
      perguntaSelecionada--;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[perguntaSelecionada]),
            Resposta('Resposta 1'),
            Resposta('Resposta 2'),
            Resposta('Resposta 3'),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 3'),
            ),
            ElevatedButton(
              onPressed: responderMenos,
              child: const Text('Resposta 4'),
            ),
            ElevatedButton(
              onPressed: responderMenos,
              child: const Text('Resposta 5'),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

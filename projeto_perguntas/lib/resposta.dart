import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  void imprimirInformacao() {
    print('Teste de nova função implementada:');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: imprimirInformacao,
      child: Text(texto),
    );
  }
}

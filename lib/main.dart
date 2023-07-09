import 'package:flutter/material.dart';
import 'dart:developer';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    log('perguntaSelecionada: $_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      '',
      'Selecione uma resposta:',
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
      'Qual é o seu filme favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(onPressed: responder, child: const Text('Iniciar')),
            ElevatedButton(
                onPressed: responder, child: const Text('Reposta 1')),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Reposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Reposta 3'),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

import 'package:flutter/material.dart';
import 'dart:developer';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
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
            Questao(perguntas[_perguntaSelecionada]),
            Resposta(_responder, 'Começar'),
            Resposta(_responder, 'Reposta 1'),
            Resposta(_responder,'Reposta 2',),
            Resposta(_responder,'Reposta 3'),
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

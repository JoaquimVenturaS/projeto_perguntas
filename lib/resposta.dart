import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;
  const Resposta(this.quandoSelecionado, this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: quandoSelecionado,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: const TextStyle(
              color: Colors.blue
            ) 
          ),
          child: Text(texto)),
    );
  }
}

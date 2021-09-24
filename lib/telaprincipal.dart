import 'dart:math';

import 'package:caraoucoroa/telaResultado.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  void _jogar() {
    var ladoMoedas = ["cara", "coroa"];

    var numero = Random().nextInt(2);
    var _resultado = ladoMoedas[numero];

    Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaResultado(_resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(97, 189, 140, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("imagens/logo.png"),
          GestureDetector(
            onTap: _jogar,
            child: Image.asset("imagens/botao_jogar.png"),
          ),
        ],
      ),
    );
  }
}

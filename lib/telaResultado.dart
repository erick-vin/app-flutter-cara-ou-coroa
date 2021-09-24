import 'package:caraoucoroa/telaprincipal.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatefulWidget {
  String valor;

  TelaResultado(this.valor);

  @override
  _TelaResultadoState createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  var _imagemResultado = AssetImage("imagens/moeda_cara.png");
  void _abrirTelaPrincipal() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var escolha = widget.valor;
    _imagemResultado = AssetImage("imagens/moeda_${escolha}.png");
    return Container(
      color: Color.fromRGBO(97, 189, 140, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: _imagemResultado),
          GestureDetector(
            onTap: _abrirTelaPrincipal,
            child: Image.asset("imagens/botao_voltar.png"),
          ),
        ],
      ),
    );
  }
}

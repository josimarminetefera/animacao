import 'package:flutter/material.dart';

class CategoriaView extends StatefulWidget {
  @override
  _CategoriaViewState createState() => _CategoriaViewState();
}

class _CategoriaViewState extends State<CategoriaView> {
  final List<String> categorias = [
    "Trabalho",
    "Estudos",
    "Casa",
  ];

  int categoria_selecionada = 0;

  void avancar() {
    setState(() {
      categoria_selecionada++;
    });
  }

  void voltar() {
    setState(() {
      categoria_selecionada--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: categoria_selecionada > 0 ? voltar : null,
        ),
        Text(
          categorias[categoria_selecionada],
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
          color: Colors.white,
          disabledColor: Colors.white30,
          onPressed: categoria_selecionada < categorias.length - 1 ? avancar : null,
        ),
      ],
    );
  }
}

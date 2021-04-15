import 'package:animacao/screens/home/widget/lista_animada_dados.dart';
import 'package:flutter/material.dart';

class ListaAnimada extends StatelessWidget {
  final Animation<EdgeInsets> listaSlide;

  ListaAnimada({@required this.listaSlide});

  @override
  Widget build(BuildContext context) {
    //stack pois vamos colocar os cars um encimado outro e vamo fazer ir descendo
    return Stack(
      alignment: Alignment.bottomCenter, //todos cards alinhado na parte de baixo, por isso que os numeros estão do 0,1,2,3
      children: [
        ListaAnimadaDados(
          titulo: "Estudar Flutter",
          subTitulo: "Curso muito bom",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 6,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter",
          subTitulo: "Curso muito bom",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 5,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter ds ",
          subTitulo: "Curso muito bomfdsfds ",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 4,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter",
          subTitulo: "Curso muito bom",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 3,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter ds ",
          subTitulo: "Curso muito bomfdsfds ",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 2,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter",
          subTitulo: "Curso muito bom",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 1,
        ),
        ListaAnimadaDados(
          titulo: "Estudar Flutter ds ",
          subTitulo: "Curso muito bomfdsfds ",
          image: AssetImage("images/perfil.PNG"),
          margin: listaSlide.value * 0,
        ),
      ],
    );
  }
}

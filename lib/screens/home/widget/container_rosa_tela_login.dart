import 'package:flutter/material.dart';

class ContainerRosaDaTelaDeLogin extends StatelessWidget {
  final Animation<Color> aimacaoContainerRosaSumindo;

  ContainerRosaDaTelaDeLogin({this.aimacaoContainerRosaSumindo});

  @override
  Widget build(BuildContext context) {
    return Hero(
      //esse hero vai fazer uma troca de widget sem voce perceber
      tag: "nomeUnicoTela",
      child: Container(
        decoration: BoxDecoration(
          color: aimacaoContainerRosaSumindo.value,
        ),
      ),
    );
  }
}

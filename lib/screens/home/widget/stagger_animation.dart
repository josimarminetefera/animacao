import 'package:animacao/screens/home/widget/home_top.dart';
import 'package:animacao/screens/home/widget/lista_animada.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller})
      : containerQueVaiCrescer = CurvedAnimation(
          parent: controller,
          curve: Curves.ease,
        ),
        listaSlide = EdgeInsetsTween(
          begin: EdgeInsets.only(bottom: 0),
          end: EdgeInsets.only(bottom: 80),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.325, //isso significa 0.325 * 2 segundos
              0.8,
              curve: Curves.ease,
            ),
          ),
        );

  final Animation<double> containerQueVaiCrescer;
  final Animation<EdgeInsets> listaSlide;

  Widget _builderAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerQueVaiCrescer: containerQueVaiCrescer,
        ),
        ListaAnimada(
          listaSlide: listaSlide,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //vai refazer toda a tela toda vez que a animação for alterada
        child: AnimatedBuilder(
          animation: controller,
          builder: _builderAnimation,
        ),
      ),
    );
  }
}

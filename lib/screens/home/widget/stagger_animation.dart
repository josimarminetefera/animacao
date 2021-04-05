import 'package:animacao/screens/home/widget/home_top.dart';
import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({@required this.controller});

  final Animation<double> containerQueVaiCrescer;

  Widget _builderAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTop(
          containerQueVaiCrescer: containerQueVaiCrescer,
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

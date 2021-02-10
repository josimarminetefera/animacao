import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller});

  Widget _builderAnimation(BuildContext context, Widget child) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        HomeTopo(

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

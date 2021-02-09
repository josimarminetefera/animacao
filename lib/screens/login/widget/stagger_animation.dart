import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        builder: _builderAnimation,
        animation: controller,
      ),
    );
  }

  Widget _builderAnimation(BuildContext context, Widget child) {
    return Padding(
      padding: EdgeInsets.only(bottom: 50),
      //InkWell servir de botão
      child: InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromRGBO(247, 64, 106, 1.0),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Text(
            "Entrar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class StaggerAnimation extends StatelessWidget {
  final AnimationController controller;

  StaggerAnimation({this.controller})
      : animacao_botao = Tween(
          begin: 320.0,
          end: 60.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.150),
          ),
        ),
        animacao_botao_zoom_saida = Tween(
          begin: 60.0,
          end: 1000.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.5, 1.0, curve: Curves.bounceOut),
          ),
        );

  final Animation<double> animacao_botao;
  final Animation<double> animacao_botao_zoom_saida;

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
        onTap: () {
          controller.forward();
        },
        child: animacao_botao_zoom_saida.value == 60
            ? Container(
                height: 60,
                width: animacao_botao.value,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                child: _conteudoBotaoEntrar(context),
              )
            : Container(
                height: animacao_botao_zoom_saida.value,
                width: animacao_botao_zoom_saida.value,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 64, 106, 1.0),
                  shape: (animacao_botao_zoom_saida.value < 500) ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
      ),
    );
  }

  Widget _conteudoBotaoEntrar(BuildContext context) {
    if (animacao_botao.value > 75) {
      return Text(
        "Entrar",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.3,
        ),
      );
    } else {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        strokeWidth: 1.0,
      );
    }
  }
}

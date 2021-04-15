import 'package:animacao/screens/home/home_screen.dart';
import 'package:animacao/screens/login/widget/botao_cadastrar.dart';
import 'package:animacao/screens/login/widget/formulario_widget.dart';
import 'package:animacao/screens/login/widget/stagger_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    //iniciar controller
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    //quando a animação finalizar eu vou trocar para a proxima tela
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        //dessa forma aqui sem o hero ela fica rápida e chapada.
        //para substituir esta tela por outra
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose(); //liberar a memória ao sair da tela
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1; //isso deixa o build 1 vezes mais lerdo.

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //para que ao clicar no botão a animação cubra a tela toda tem que criar um stack
            Stack(
              alignment: Alignment.bottomCenter, // alinhar todos componentes na parte de baixo do widget
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(
                        "images/tickicon.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormularioWidget(),
                    BotaoCadastrar(),
                  ],
                ),
                //botão entrar ele fica acima do botão cadastrar graças ao alinhamento na parte inferior
                StaggerAnimation(controller: _animationController.view),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

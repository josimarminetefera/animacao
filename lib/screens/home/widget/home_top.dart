import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  final Animation<double> containerQueVaiCrescer;

  //vou receber uma animação que vai controlar como os elementos do meu home top seram animados.
  HomeTop({this.containerQueVaiCrescer});

  @override
  Widget build(BuildContext context) {
    //quero passar uma certa porcentagem da altura da minha tela
    final tamanhoTela = MediaQuery.of(context).size;
    return Container(
      height: tamanhoTela.height * 0.3, //garanto que vai ocupar 30% da tela
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espaçar o conteudo na vertical
          children: [
            Text(
              "Bem Vindo Josimar",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            //Container principal com a imagem e a notificaçao
            Container(
              alignment: Alignment.topRight,
              //alinhamento na notificação = alinhamento do filho a direita
              width: containerQueVaiCrescer.value * 120,
              height: containerQueVaiCrescer.value * 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("images/perfil.PNG"),
                  fit: BoxFit.cover, //imagem cobre o cicle
                ),
              ),
              child: Container(
                // numero que fica no canto direito
                height: containerQueVaiCrescer.value * 35,
                width: containerQueVaiCrescer.value * 35,
                margin: EdgeInsets.only(left: 80),
                alignment: Alignment.center,
                //tem como alinhas com alignment e child center
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: containerQueVaiCrescer.value * 15, fontWeight: FontWeight.w400, color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(80, 210, 198, 1.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

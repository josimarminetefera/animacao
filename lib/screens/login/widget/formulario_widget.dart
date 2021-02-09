import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'input_fild.dart';

class FormularioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: [
            InputField(
              hintText: "Usuario",
              obscureText: false,
              icon: Icons.person_outline,
            ),
            InputField(
              hintText: "Senha",
              obscureText: true,
              icon: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}

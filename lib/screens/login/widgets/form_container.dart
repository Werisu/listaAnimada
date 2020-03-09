import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/login/widgets/input_fiel.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        child: Column(
          children: <Widget>[
            InputFiel(
              hint: "Nome",
              obscure: false,
              icon: Icons.person_outline,
            ),
            InputFiel(
              hint: "Senha",
              obscure: true,
              icon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }
}

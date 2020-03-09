import 'package:flutter/material.dart';

class SignUpBotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(top: 160),
      onPressed: (){

      },
      child: Text(
        "Não possui uma conta? Cadastre-se!",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 14,
          letterSpacing: 0.5
        ),
      ),
    );
  }
}

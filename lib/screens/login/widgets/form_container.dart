import 'package:flutter/material.dart';
import 'package:listworkanimation/models/user_model.dart';
import 'package:listworkanimation/screens/login/widgets/input_fiel.dart';
import 'package:scoped_model/scoped_model.dart';

class FormContainer extends StatelessWidget {

  final _scaffoldkey = GlobalKey<ScaffoldState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
            return Center(child: CircularProgressIndicator(),);
          return Form(
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
          );
        },
      ),
    );
  }
}

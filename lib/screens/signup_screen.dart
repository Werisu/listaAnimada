import 'package:flutter/material.dart';
import 'package:listworkanimation/models/user_model.dart';
import 'package:scoped_model/scoped_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  final _formaKey = GlobalKey<FormState>();
  final _scaffolkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolkey,
      appBar: AppBar(
        title: Text(
          "Criar Conta"
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model) {
          if(model.isLoading){
            return Center(child: CircularProgressIndicator(),);
          }
          return Form(
            key: _formaKey,
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Nome"
                  ),
                  validator: (text){
                    if(text.isEmpty) return "Nome Inválido!";
                  },
                ),
                SizedBox(height: 16.0,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (text){
                    if(text.isEmpty || !text.contains("@")) return "Email inválido!";
                  },
                ),
                SizedBox(height: 16.0,),
                TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    hintText: "senha"
                  ),
                  obscureText: true,
                  validator: (text){
                    if(text.isEmpty || text.length < 6)
                      return "Senha Inválida";
                  },
                ),
                SizedBox(height: 16.0,),
                SizedBox(
                  height: 44.0,
                  child: RaisedButton(
                    child: Text(
                      "Criar Conta",
                      style: TextStyle(
                        fontSize: 18.0
                      ),
                    ),
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    onPressed: (){
                      if(_formaKey.currentState.validate()){

                        Map<String, dynamic> userData = {
                          "name": _nameController.text,
                          "email": _emailController.text
                        };

                        model.signUp(
                          userData: userData,
                          pass: _passController.text,
                          onSucess: _onSucess,
                          onFail: _onFail
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          );
        },),
    );
  }

  void _onSucess(){
    _scaffolkey.currentState.showSnackBar(
      SnackBar(
        content: Text("Usuário criado com sucesso!"),
        backgroundColor: Theme.of(context).primaryColor,
        duration: Duration(seconds: 3),
      )
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pop();
    });
  }

  void _onFail(){
    _scaffolkey.currentState.showSnackBar(
      SnackBar(
        content: Text("Falha ao criar usuário!"),
        backgroundColor: Colors.redAccent,
        duration: Duration(seconds: 3),
      )
    );
  }
}

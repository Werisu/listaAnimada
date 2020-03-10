import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/login/login_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'models/user_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(builder: (BuildContext context, Widget child, UserModel model) {
        return MaterialApp(
          title: 'Flutter Demo',
          //debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Color.fromARGB(255, 0, 250, 154)
          ),
        );
      },

      ),
    );
  }
}

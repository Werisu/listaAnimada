import 'package:flutter/material.dart';
import 'package:listworkanimation/screens/home/home_screen.dart';
import 'package:listworkanimation/screens/login/widgets/form_container.dart';
import 'package:listworkanimation/screens/login/widgets/sign_up_botton.dart';
import 'package:listworkanimation/screens/login/widgets/stagger_animation.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    
    _animationController.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>HomeScreen())
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/kimetsu-no-yaiba.jpg"),
            fit: BoxFit.cover
          )
        ),
        // o ListView Permite rolar a tela
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // Stack permite um componete passar por cima do outro
            Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 70, bottom: 32),
                      child: Image.asset(
                        "images/urso1.png",
                        width: 150,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                    ),
                    FormContainer(),
                    SignUpBotton()
                  ],
                ),
                StaggerAnimation(
                  controller: _animationController.view
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:listworkanimation/screens/home/widgets/cart_plus.dart';
import 'package:listworkanimation/screens/home/widgets/stagger_animation.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 2;
    // floatingActionButton: CartPlus(),
    return Scaffold(
      floatingActionButton: CartPlus(),
      body: StaggerAnimation(
        controller: _controller.view,
      ),
    );
  }
}

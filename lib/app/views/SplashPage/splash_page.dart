import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokelandia/app/views/PokemonPage/pokemon_page.dart';

class SplashPage extends StatefulWidget {
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      // upperBound: 100.0,
    );
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return PokemonPage();
            })));

    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.forward();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse(from: 1.0);
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.reverse(from: 1.0);
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                  child: Image.asset('assets/logo.png'),
                  height: animation.value * 100),
            ),
          ],
        ),
      ),
    );
  }
}

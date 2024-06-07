import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_nike/Pages/onboard.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Onboard(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(91, 158, 225, 1),
      body: Center(
        child: Text('NIKEYBOOTS',
          style: TextStyle(
            fontSize: 28,
            color: Color.fromRGBO(248, 249, 250, 1),
            fontFamily: 'Acme',
          ),
        ),
      ),
    );
  }
}
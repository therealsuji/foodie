import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodie/Utils/ScreenSize.dart';
import 'package:foodie/screens/login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadData();

  }

  @override
  Widget build(BuildContext context) {
    ScreenSize().setHeightWidth(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/splash.png'), fit: BoxFit.cover),
      ),
      child: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
        ),
      ),
    );
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 1), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }
}

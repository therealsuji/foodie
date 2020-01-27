import 'package:flutter/material.dart';
import 'package:foodie/constants/router_constants.dart';
import 'package:foodie/screens/login.dart';
import 'package:foodie/screens/splash.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashViewRoute:
      return MaterialPageRoute(builder: (context)=>Splash());
    case LoginViewRoute:
      return MaterialPageRoute(builder: (context)=>Login());
    default:
      return MaterialPageRoute(builder: (context)=>Splash());
  }
}
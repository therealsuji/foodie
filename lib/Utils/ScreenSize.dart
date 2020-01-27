import 'package:flutter/material.dart';


class ScreenSize{
  static double _height;
  static double _width;

  static double _designHeight=812;
  static double _designWidth=375;


  setHeightWidth(BuildContext context){
     _height = MediaQuery.of(context).size.height;
     _width = MediaQuery.of(context).size.width;

  }

  double getFullHeight(){
    return _height;
  }
  double getFullWidth(){
    return _width;
  }
  double getHeight(double val){
    return (val/_designHeight)*_height.toDouble();

  }
  double getWidth(double val){
    return (val/_designWidth)*_width.toDouble();
  }
}
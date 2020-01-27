import 'package:flutter/material.dart';
import 'package:foodie/constants/router_constants.dart';
import 'package:foodie/helper/router.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: router.generateRoute,
      initialRoute: SplashViewRoute,
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff26D07C),
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: TextTheme(
            title: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                color: Colors.white),
            subtitle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
                color: Colors.white)),
        primarySwatch: Colors.blue,
      ),
    );
  }
}

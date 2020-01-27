import 'package:flutter/material.dart';
import 'package:foodie/Utils/ScreenSize.dart';
import 'package:foodie/Utils/custom_icons.dart';
import 'package:foodie/bloc/loginBloc.dart';
import 'package:foodie/widgets/IconTextField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginBloc _loginBloc = LoginBloc();

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          top: 0.0,
          child: new Image.asset(
            'assets/images/loginBG.png',
            fit: BoxFit.fitHeight,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: ScreenSize().getWidth(26),
              right: ScreenSize().getWidth(26)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 205,
                  margin: EdgeInsets.only(
                    top: ScreenSize().getHeight(214),
                  ),
                  child: Text('Welcome Back',
                      style: Theme.of(context).textTheme.title)),
              Container(
                  width: 205,
                  margin: EdgeInsets.only(
                    top: ScreenSize().getHeight(7),
                  ),
                  child: Text('Please Sign in to continue',
                      style: Theme.of(context).textTheme.subtitle)),
              Container(
                  margin: EdgeInsets.only(top: ScreenSize().getHeight(15)),
                  child: IconTextField(
                    icon: CustomIcons.user,
                    hintText: "Username",
                    sink: _loginBloc.usernameSink,
                  )),
              Container(
                  margin: EdgeInsets.only(top: ScreenSize().getHeight(18)),
                  child: IconTextField(
                    icon: CustomIcons.lock,
                    hintText: "Password",
                    sink : _loginBloc.passwordSink
                  )),
            StreamBuilder(
              stream: _loginBloc.usernameStream,
              builder: (context, snapshot) {
                return snapshot.hasData ? Text(snapshot.data): Text("");
              }
            ),
              Container(
                margin: EdgeInsets.only(top: ScreenSize().getHeight(10)),
                width:ScreenSize().getFullWidth(),
                child: GestureDetector(onTap: (){
                },
                  child: Text("Forgot Password ?",textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.subtitle),
                ),
              ),
              Container(
                width: ScreenSize().getFullWidth(),
                child: RaisedButton(
                  textColor: Colors.white,
                  child: Text("Login"),
                  onPressed: (){
                  },
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

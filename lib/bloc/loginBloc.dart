import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LoginBloc {
  String _username;
  String _password;

  // This is used to hold the last value
  BehaviorSubject<String> _usernameSubject = BehaviorSubject<String>();

  Stream<String> get usernameStream => _usernameSubject.stream;
  StreamController<String> _usernameController = StreamController<String>();

  Sink<String> get usernameSink => _usernameController.sink;

  BehaviorSubject<String> _passwordSubject = BehaviorSubject<String>();

  Stream<String> get passwordStream => _passwordSubject.stream;
  StreamController<String> _passwordController = StreamController<String>();

  Sink<String> get passwordSink => _passwordController.sink;

  LoginBloc() {
    _usernameController.stream.listen((value) {
      _username = value;
      print(value);
    });

    _passwordController.stream.listen((value) {
      _password = value;
      print(value);
    });
  }

  void dispose() {
    _usernameSubject.close();
    usernameSink.close();
    _usernameController.close();
  }
}

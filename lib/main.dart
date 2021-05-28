import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home_screen.dart';
import 'package:flutter_application_2/screens/list_screen.dart';
import 'package:flutter_application_2/screens/login_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  bool _isAuthenticated = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.copyWith(
                headline1: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
        ),
        home: ListScreen() // _isAuthenticated ? HomeScreen() : LoginSreen(),
        );
  }
}

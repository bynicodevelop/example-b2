import 'package:flutter/material.dart';

class LoginSreen extends StatelessWidget {
  const LoginSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        child: Text("Login"),
      )),
    );
  }
}

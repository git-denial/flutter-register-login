import 'package:flutter/material.dart';
import './sign_up.dart';
import './login.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SignupPage(),
        '/login': (context) => LoginPage(),
        '/signup' :(context) => SignupPage(),
      },
    );
  }
}
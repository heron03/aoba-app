import 'package:aoba/views/home.dart';
import 'package:aoba/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF304FFE),
        scaffoldBackgroundColor: Color(0xFFE4E7E8),
      ),
      home: LoginWidget(),
    );
  }
}

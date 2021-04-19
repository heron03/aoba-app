import 'package:aoba/view/produto_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Inicio());
}

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF304FFE),
      ),
      home: ProdutoView(),
    );
  }
}

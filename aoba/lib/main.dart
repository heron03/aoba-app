import 'package:aoba/views/produto_view.dart';
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
      home: ProdutoView(
        'Cyberpunk 2020 - Edição Padrão - PlayStation4',
        'R\$ 99,00',
        'Loren ipsun Loren ipsun Loren ipsun',
      ),
    );
  }
}

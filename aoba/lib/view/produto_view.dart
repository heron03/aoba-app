import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProdutoView extends StatefulWidget {
  @override
  _ProdutoViewState createState() => _ProdutoViewState();
}

class _ProdutoViewState extends State<ProdutoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_left,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Cyberpunk 2077 - Edição Padrão - PlayStation4',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png',
                      height: 250,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png',
                          height: 118,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png',
                          height: 118,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Text(
                        'Descrição',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: RatingBar.builder(
                        initialRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(Icons.star),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  text: 'Loren ipsun Loren ipsun Loren ipsun\n\n',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  children: [
                    TextSpan(
                      text: 'R\$ 99,00\n',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Em 12 x de R\$ 8,25',
                      style: TextStyle(
                        color: Color(0xFF8B0CB8),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Adicionar ao Carrinho',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Comprar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF7924FF)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
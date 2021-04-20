import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProdutoView extends StatefulWidget {
  final String nome;
  final String valor;
  final String descricao;

  const ProdutoView(this.nome, this.valor, this.descricao) : super();

  @override
  _ProdutoViewState createState() => _ProdutoViewState();
}

class _ProdutoViewState extends State<ProdutoView> {
  @override
  Widget build(BuildContext context) {
    final double fonteTitulo = 30.0;

    retornaTexto(texto, tamanhoFonte, {pesoNegrito, corFonte}) {
      return Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: tamanhoFonte,
          fontWeight: pesoNegrito == null ? FontWeight.bold : pesoNegrito,
          color: corFonte == null ? Colors.black : corFonte,
        ),
      );
    }

    retornaImagem(imagem, altura) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          imagem,
          height: altura,
        ),
      );
    }

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
              retornaTexto(
                  widget.nome, fonteTitulo),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  retornaImagem('https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png', 250.0),
                  Column(
                    children: [
                      retornaImagem('https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png', 118.0),
                      retornaImagem('https://upload.wikimedia.org/wikipedia/pt/f/f7/Cyberpunk_2077_capa.png', 118.0),
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
                      child: retornaTexto('Descrição', 22.0,
                          corFonte: Colors.grey[600]),
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
                  text: '${widget.descricao}\n\n',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  children: [
                    TextSpan(
                      text: '${widget.valor}\n',
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
                        child: retornaTexto('Adicionar ao Carrinho', 15.0),
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
                        child: retornaTexto('Comprar', 15.0, corFonte: Colors.white),
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

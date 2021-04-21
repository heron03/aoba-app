import 'package:aoba/model/loja.dart';
import 'package:aoba/views/components/centered_message.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  List<Loja> listaDeLojas;
  DataSearch(this.listaDeLojas)
      : super(
          searchFieldLabel: "Buscar",
        );
  var buscaRecente = [];
  var loja;
  var listaLojasBusca;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    listaLojasBusca = query.isEmpty
        ? buscaRecente
        : listaDeLojas
            .where(
              (u) => ((u.nome.toLowerCase().contains(
                    query.toLowerCase(),
                  ))),
            )
            .toList();

    int contador = listaLojasBusca.length;
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: listaLojasBusca.length == 0 ? 1 : contador,
      itemBuilder: (BuildContext context, int index) {
        if (query.isNotEmpty) {
          if (0 == listaLojasBusca.length) {
            return Row(
              children: [
                Expanded(
                  child: Center(
                    child:
                        CenteredMessage('Não foi encontrado nenhuma Loja', ''),
                  ),
                ),
              ],
            );
          } else {
            loja = listaLojasBusca[index];
            return ListTile(
              dense: false,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.network(
                    listaLojasBusca[index].img,
                    height: 100,
                    width: 100,
                  ),
                  VerticalDivider(),
                ],
              ),
              title: Text(listaLojasBusca[index].nome),
              subtitle: Text(listaLojasBusca[index].descricao),
              onTap: () {},
              trailing: Icon(Icons.favorite_border_outlined, size: 30.0),
            );
          }
        }
        return Container();
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: listaLojasBusca.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          dense: false,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                listaLojasBusca[index].img,
                height: 100,
                width: 100,
              ),
              VerticalDivider(),
            ],
          ),
          title: Text(listaLojasBusca[index].nome),
          subtitle: Text(listaLojasBusca[index].descricao),
          onTap: () {},
          trailing: Icon(Icons.favorite_border_outlined, size: 30.0),
        );
      },
    );
  }
}

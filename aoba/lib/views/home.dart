import 'package:aoba/model/loja.dart';
import 'package:aoba/views/components/data_search.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Loja> listaDeLojas = [
      Loja("Tangará", "Tangará casa & construções",
          "https://tangaramarilia.com.br/wp-content/themes/tangaracec/images/logo.png"),
      Loja("Casa Mágica dos Games", "valor", "https://scontent.fmii1-1.fna.fbcdn.net/v/t1.18169-9/1013110_609690692427466_668644488_n.png?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=ERbIA77lcboAX_75i8P&_nc_ht=scontent.fmii1-1.fna&oh=7cc7abc21214a4f76951b581dafcb32d&oe=60A6BD78"),
      Loja("O Boticário", "valor", "https://lh3.googleusercontent.com/proxy/dPSTpNSrnhh5iA-nkDq44dNNmyMHxnvF0pxx-3NDVsU7TUHsxZNtg1Cz5FMdAZXCrio28eyJAWMITgS7RwiPDqEceH-KOR3HC5SXKFLKmw387KXDRmaU2tPg6Yp_3UKQ30H5fNiT6CwV"),
      Loja("Tudo 1 Pouco Materiais p/ Construção", "valor", "https://scontent.fmii1-1.fna.fbcdn.net/v/t1.18169-9/14364875_249226438811375_6843380146910529128_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=NgrGu8KWTYoAX95-cWr&_nc_ht=scontent.fmii1-1.fna&oh=612c05653880cd77a1251a421bcce5d4&oe=60A52DF2"),
      Loja("Cirandinha Calçados", "valor", "https://scontent.fmii1-1.fna.fbcdn.net/v/t1.18169-9/15036573_671766852977881_8142848724768959007_n.png?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=VclQ3dzzfYMAX9yD_05&_nc_ht=scontent.fmii1-1.fna&oh=3a1d2687786608debe77ee8a87762c9f&oe=60A4CD0A"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Buscar Lojas"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: DataSearch(listaDeLojas),
                );
              },
            ),
          ],
        ),
      body: ListView.separated(
        itemCount: listaDeLojas.length,
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: false,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.network(
                  listaDeLojas[index].img,
                  height: 100,
                  width: 100,
                ),
                VerticalDivider(),
              ],
            ),
            title: Text(listaDeLojas[index].nome),
            subtitle: Text(listaDeLojas[index].descricao),
            onTap: () {},
            trailing: Icon(Icons.favorite_border_outlined, size: 30.0),
          );
        },
      ),
    );
  }
}

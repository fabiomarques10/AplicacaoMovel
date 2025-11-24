import 'package:projetoacrmobile/data_objects/casas.dart';
import 'package:projetoacrmobile/globals.dart';
import 'package:flutter/material.dart';


class CasaCard extends StatelessWidget{
  final Casa casa;
  final Function() showDetails;

  const CasaCard({
    required this.casa,
    required this.showDetails,
    super.key,
  });

  @override
  Widget build(BuildContext context){
    final String myUrl = "${Globals.baseUrl}/public/img/${casa.imagem}";


    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text("${casa.endereco} ${casa.preco}€"),
        leading: Image.network(myUrl),
        onTap: showDetails,
      ),
    );
  }
}
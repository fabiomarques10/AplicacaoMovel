import 'package:projetoacrmobile/data_objects/casas.dart';
import 'package:projetoacrmobile/globals.dart';
import 'package:flutter/material.dart';

class CasaDetails extends StatelessWidget{
  final Casa casa;

  const CasaDetails({required this.casa, super.key});

  @override
  Widget build(BuildContext context){
    final String myUrl = "${Globals.baseUrl}/public/img/${casa.imagem}";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Endereço: ${casa.endereco}"),
        Text("Preço: ${casa.preco.toString()}€"),
        Text("Área: ${casa.area.toString()} m2"),
        Text("WC: ${casa.wc.toString()} "),
        const SizedBox(height: 10),
        Image.network(myUrl),
        const SizedBox(height: 10),
        Text(casa.desc),
        const SizedBox(height: 10),
        
      ],
    );
  }
}
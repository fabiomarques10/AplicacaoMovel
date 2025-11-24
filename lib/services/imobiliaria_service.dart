import 'dart:convert';
import 'package:projetoacrmobile/data_objects/casas.dart';
import 'package:projetoacrmobile/globals.dart';
import 'package:http/http.dart' as http;

class ImobiliariaService {
  List<Casa> casas = [];
  int casaId = 0;
  late Casa currentCasa;

  Future<void> getCasas() async {
    var url = Uri.parse("${Globals.apiUrl}/casas");
    var response = await http.get(url);

    casas.clear();
    List<dynamic> returnedCasas = jsonDecode(response.body);
    for (var returnedCasa in returnedCasas) {
      Casa c = Casa(
        id: returnedCasa['id'],
        endereco: returnedCasa['endereco'],
        preco: int.parse(returnedCasa['preco']),
        wc: (returnedCasa['wc']),
        area: (returnedCasa['area']),
        desc: returnedCasa['desc'],
        imagem: returnedCasa['imagem'],
      );

      casas.add(c);
    }
  }

  Future<void> getCurrentCasa() async {
    var url = Uri.parse("${Globals.apiUrl}/casas/$casaId");
    var response = await http.get(url);
    var returnedCasa = jsonDecode(response.body);

    currentCasa = Casa(
      id: returnedCasa['id'],
      endereco: returnedCasa['endereco'],
      preco: int.parse(returnedCasa['preco']),
      wc: returnedCasa['wc'],
      area: returnedCasa['area'],
      desc: returnedCasa['desc'],
      imagem: returnedCasa['imagem'],
    );
  }
}

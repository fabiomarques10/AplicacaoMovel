
import 'package:projetoacrmobile/globals.dart';
import 'package:projetoacrmobile/widgets/casas_card.dart';
import 'package:flutter/material.dart';

class Casas extends StatefulWidget{
  const Casas({super.key});

  @override
  State<Casas> createState() => _CasasState();
}


class _CasasState extends State<Casas>{
  void showDetails(int casaId){
    Globals.service.casaId = casaId;
    Navigator.pushNamed(context, '/LoadDetails');

    
  }
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Casas"),
        backgroundColor: const Color.fromARGB(255, 100, 185, 235),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Globals.service.casas.length,
              itemBuilder: (context, index) => CasaCard(
                casa: Globals.service.casas[index],
                showDetails: ((){
                  showDetails(Globals.service.casas[index].id);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


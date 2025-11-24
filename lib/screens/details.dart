import 'package:projetoacrmobile/globals.dart';
import 'package:projetoacrmobile/widgets/casas_details.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget{
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details>{
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(83, 239, 184, 56),
      appBar: AppBar(
        title: const Text("Casas"),
        backgroundColor: Colors.lightBlue[800],
      ),
      body: Column(children: [
        Expanded(
          child: CasaDetails(
            casa: Globals.service.currentCasa,
          ),
        ),
      ]),
    );
  }
}
import 'package:projetoacrmobile/globals.dart';
import 'package:projetoacrmobile/screens/details.dart';
import 'package:projetoacrmobile/screens/loading.dart';
import 'package:projetoacrmobile/screens/casascreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/Casas': (context) => const Casas(),
        '/Details': (context) => const Details(),
        '/LoadDetails':(context) {
          Globals.nextRoute = '/Details';
          return const Loading();
        },
      },
    ),
  );
}
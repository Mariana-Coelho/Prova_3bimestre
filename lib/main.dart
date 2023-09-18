import 'package:flutter/material.dart';
import 'package:prova_3bimestre/screens/geracoes_screen.dart'; // Importe a tela de Gerações

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GeracoesScreen(), // Defina a tela de Gerações como a tela inicial
    );
  }
}
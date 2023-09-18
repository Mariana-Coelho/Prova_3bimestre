import 'package:flutter/material.dart';
import 'package:prova_3bimestre/mockdata/generations.dart';
import 'package:prova_3bimestre/screens/detalhes_geracao_screen.dart';

class GeracoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações'),
      ),
      body: ListView.builder(
        itemCount: generations.length,
        itemBuilder: (context, index) {
          final generation = generations[index];
          return ListTile(
            title: Text(generation.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesGeracaoScreen(generation: generation),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
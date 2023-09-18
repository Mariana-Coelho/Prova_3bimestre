import 'package:flutter/material.dart';
import 'package:prova_3bimestre/mockdata/generations.dart';

import '../models/generation.dart';

class DetalhesGeracaoScreen extends StatelessWidget {
  final Generation generation;

  DetalhesGeracaoScreen({required this.generation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(generation.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: generation.pokemons.length,
        itemBuilder: (context, index) {
          final pokemonImage = generation.pokemons[index];
          return Image.asset(pokemonImage);
        },
      ),
    );
  }
}
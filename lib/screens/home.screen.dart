import 'package:flutter/widgets.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/widget/pokemonGridItem.dart';

class HomeScreen extends StatelessWidget {
  final List<Pokemon> pokemons;

  HomeScreen({this.pokemons});

  @override
  Widget build(BuildContext context) {
    List<Widget> list =
        pokemons.map((p) => PokemonGridItem(pokemon: p)).toList();

    return GridView.count(crossAxisCount: 2, children: list);
  }
}

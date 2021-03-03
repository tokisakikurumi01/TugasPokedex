import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/screens/home.screen.dart';
import 'package:http/http.dart';

void main() => runApp(Pokedex());

class Pokedex extends StatelessWidget {
  final client = Client();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          title: Text("Pokédex"),
          backgroundColor: Colors.blueGrey[500],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white70),
                accountName: Text(
                  "Ricky Giovanni",
                  style: TextStyle(color: Colors.blue),
                ),
                accountEmail: Text(
                  'rickygiovanni01@gmail.com',
                  style: TextStyle(color: Colors.blue),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        body: buildPokemonScreen(),
      ),
    );
  }

  Widget buildPokemonScreen() {
    return FutureBuilder(
      future: fetchPokemonsFromAPI(),
      builder: (BuildContext context, AsyncSnapshot<List<Pokemon>> snapshot) {
        if (snapshot.hasData) {
          return HomeScreen(pokemons: snapshot.data);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  Future<List<Pokemon>> fetchPokemonsFromAPI() async {
    final response = await client.get(
        'https://raw.githubusercontent.com/rsr-itminds/flutter-workshop/master/data/pokedex.json');

    final List<dynamic> data = json.decode(response.body);

    return data.map((json) => Pokemon.fromJson(json)).toList();
  }
}

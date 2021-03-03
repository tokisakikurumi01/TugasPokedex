import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon.model.dart';

class DetailsScreen extends StatelessWidget {
  final Pokemon pokemon;
  final TextStyle style = TextStyle(color: Colors.white, fontSize: 16);

  DetailsScreen({this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        centerTitle: true,
        title: Text(pokemon.name),
        backgroundColor: Colors.blueGrey[500],
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(pokemon.image),
            Text(
              "Name:" + pokemon.name,
              style: style,
            ),
            Text(
              "Height:" + pokemon.height,
              style: style,
            ),
            Text(
              "Weight:" + pokemon.weight,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}

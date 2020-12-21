import 'dart:convert';
import 'package:apilearning/albums.dart';
import 'package:apilearning/catfacts.dart';
import 'package:apilearning/geeta.dart';
import 'package:apilearning/model/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//mykey= fOoGMCJRIFOFUts3GCmsKlWevtb2

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'API',
      theme: ThemeData(
        fontFamily: "Bauhaus",
        primarySwatch: Colors.blue,
      ),
      home: DisplayAlbums(),
    );
  }
}



class HiPokemon extends StatefulWidget {
  HiPokemon({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HiPokemonState createState() => _HiPokemonState();
}

class _HiPokemonState extends State<HiPokemon> {
Pokemon hiPokemon;


Future<Pokemon> getPokemon() async {
  final response =
  await http.get('https://pokeapi.co/api/v2/pokemon?limit=100&offset=200');

  if (response.statusCode == 200) {
    hiPokemon = Pokemon.fromJson(jsonDecode(response.body));
    return Pokemon.fromJson(jsonDecode(response.body));
  } else {

    throw Exception('Failed to load ');
  }
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPokemon();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          RaisedButton(onPressed: (){
            getPokemon();

          }),
          hiPokemon==null?CircularProgressIndicator():Expanded(
            child: ListView.builder(
              itemCount: hiPokemon.results.length,
              itemBuilder: (c,i){
                return Card(
                  color: Colors.green[200],
                    child: Column(
                  children: [
                    Text(hiPokemon.results[i].name),
                    Text(hiPokemon.results[i].url),
                  ],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}


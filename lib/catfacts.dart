import 'dart:convert';

import 'package:apilearning/model/cat_facts_mode.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CatsFacts extends StatefulWidget {
  @override
  _CatsFactsState createState() => _CatsFactsState();
}

class _CatsFactsState extends State<CatsFacts> {
  CatFact fetchCatFacts;

  Future<CatFact> getCats() async {
    final response = await http.get("https://cat-fact.herokuapp.com/facts");
    print("Work in progress");
    if (response.statusCode == 200) {
      setState(() {});
      print("Work done");
      fetchCatFacts = CatFact.fromJson(jsonDecode(response.body));
      return CatFact.fromJson(jsonDecode(response.body));
    } else {
      print("Sorry");
      throw Exception('Failed to load ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RaisedButton(onPressed: () {
            getCats();
            setState(() {});
          }),
          fetchCatFacts == null
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                      itemCount: fetchCatFacts.all.length,
                      itemBuilder: (c, i) {
                        return Card(
                            child: Column(
                          children: [
                            fetchCatFacts.all[i].user == null
                                ? Text("Sorry Name is not available")
                                : Text(fetchCatFacts.all[i].user.name.first +
                                    " " +
                                    fetchCatFacts.all[i].user.name.last),
                            Text(fetchCatFacts.all[i].text),
                          ],
                        ));
                      }))
        ],
      ),
    );
  }
}

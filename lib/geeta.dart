import 'dart:convert';

import 'package:apilearning/model/geeta_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//https://sheetlabs.com/IND/vs
class Geeta extends StatefulWidget {
  @override
  _GeetaState createState() => _GeetaState();
}

class _GeetaState extends State<Geeta> {
  List<GeetaShloka> getShloka;

  getShlok() async {
      final response = await http.get("https://sheetlabs.com/IND/vs");
    print("Work in progesss");
    if (response.statusCode == 200) {
      var parsedData = jsonDecode(response.body);
      getShloka =
          (parsedData as List).map((e) => GeetaShloka.fromJson(e)).toList();
      print("Work done");
      setState(() {});
    } else {
      throw Exception("Fail TO load");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          RaisedButton(onPressed: () {
            getShlok();
          }),
          getShloka == null
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                      itemCount: getShloka.length,
                      itemBuilder: (c, i) {
                        return Card(
                          child: Column(
                            children: [
                              Text(getShloka[i].word),
                              Text(getShloka[i].category),
                              Text(getShloka[i].description),
                              Text(getShloka[i].nagari)
                            ],
                          ),
                        );
                      }))
        ],
      )),
    );
  }
}

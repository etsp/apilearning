import 'dart:convert';

import 'package:apilearning/model/geeta_model.dart';
import 'package:apilearning/model/player_info_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//https://sheetlabs.com/IND/vs
class Geeta extends StatefulWidget {
  @override
  _GeetaState createState() => _GeetaState();
}

class _GeetaState extends State<Geeta> {
  List<PlayerInfo> getPlayerInfo;

  getData() async
  {
    final response = await http.get("https://cricapi.com/api/playerStats?apikey=fOoGMCJRIFOFUts3GCmsKlWevtb2&pid=");
    print("Work in progesss");
    if(response.statusCode ==200)
    {

      var parsedData = jsonDecode(response.body);
      getPlayerInfo = (parsedData as List).map((e) => PlayerInfo.fromJson(e)).toList();
      print("Work done");
      setState(() {

      });

    }
    else{
      throw Exception("Fail TO load");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          RaisedButton(onPressed: (){
            getData();
          }),
          getPlayerInfo==null?CircularProgressIndicator():Card(
            color: Colors.teal[100],
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network("src")
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

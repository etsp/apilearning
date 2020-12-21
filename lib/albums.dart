import 'dart:convert';

import 'package:apilearning/model/album_model.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class DisplayAlbums extends StatefulWidget {
  @override
  _DisplayAlbumsState createState() => _DisplayAlbumsState();
}
//https://jsonplaceholder.typicode.com/albums/
class _DisplayAlbumsState extends State<DisplayAlbums> {

  List<Data> myList = [];
   CountryCode selected;
  fetchData()
  async {
    final response = await http.get("https://cricapi.com/api/matchCalendar?apikey=fOoGMCJRIFOFUts3GCmsKlWevtb2");

    if(response.statusCode ==200)
      {
          var parsedData = jsonDecode(response.body);
          //print(parsedData[]);
          myList = (parsedData["data"] as List).map((e) => Data.fromJson(e)).toList();
          setState(() {

          });
      }

  }
  _onCountryChange(CountryCode countryCode) {
    //TODO : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: GestureDetector(
          onTap: (){
            _onCountryChange(selected);
          },
          child: Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Icon(Icons.add),
                CountryCodePicker(
                  showFlag: false,
                  enabled: true,
                  closeIcon: Icon(Icons.arrow_forward_ios),
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IT',
                  favorite: ['+39','FR'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

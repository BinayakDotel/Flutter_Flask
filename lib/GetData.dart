import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class GetData extends StatelessWidget {
  Future<List> fetchData() async {
    http.Response response = await http.get(
      Uri.encodeFull("http://192.168.1.98:5000/api/v1/resources/books/all"),

      //Uri.encodeFull('https://my-json-server.typicode.com/typicode/demo/posts'),
      headers: {"Accept": "applicaton/json"},
    );
    List data = jsonDecode(response.body);

    if (response.statusCode == 200){
      print(data);
    }else{
      print("Something went wrong!!!");
    }
    return (data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      child: Icon(Icons.data_usage),
      onPressed: () => fetchData(),
    ));
  }
}

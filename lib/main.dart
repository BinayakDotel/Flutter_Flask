import 'package:flutter/material.dart';
import 'GetData.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Binayak",
      home: Scaffold(
        appBar: AppBar(
          title: Text('API test'),
          backgroundColor: Colors.red[300],
        ),
        body: Column(
          children: <Widget>[
            /*TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.people),
                hintText: 'What do people call you?',
                labelText: 'Name *',
              ),
              onSaved: (String value){
                print('Thank you $value');
              },
              validator: (String value){
                return value.contains('@')? "Something went wrong" : null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone_android),
                hintText: 'What phone are you using?',
                labelText: 'Phone *',
              ),
              onSaved: (String value){
                print('Thank you $value');
              },
              validator: (String value){
                return value.contains('@')? "Something went wrong" : null;
              },
            ),*/
            GetData(),
            ],),
        ),
      );
  }
}



import 'package:flutter/material.dart';
import 'HomeApp.dart';
class MyApp extends StatelessWidget{

  Widget _homePage(BuildContext context){
    return new MyHomePage(title: "Flutter Demo Home Page",);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
        primarySwatch:Colors.blue,
      ),
      routes: <String,WidgetBuilder>{
        "/home":(BuildContext context) =>new MyHomePage(),
      },
      home: _homePage(context),
    );
  }
}

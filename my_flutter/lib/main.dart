import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'MyApp.dart';
import 'HomeApp.dart';
import 'NativePostHomePage.dart';
void main() => runApp(_widgetForRoute(ui.window.defaultRouteName));

Widget _widgetForRoute(String route){
  print("ios run here");
  print(route);
  switch(route){
    case "myApp":
      return new MyApp();
    case "homeApp":
      return new MyHomePage(title: "flutter demo",);
    case "home":
      return new HomePage();
      default:
        return Center(
          child: Text("Unknown route: $route",textDirection: TextDirection.ltr,),
        );

  }

}


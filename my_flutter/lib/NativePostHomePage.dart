import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{

  static const eventChanel = const EventChannel("com.pages.your/native_post");
  String nativeTitle = "title";
  @override
  void initState() {
    // TODO: implement initState
    eventChanel.receiveBroadcastStream(2345).listen(_onEnvent,onError: _onError);
    super.initState();
  }
  _onEnvent(Object event){
    setState(() {
      nativeTitle = event.toString();
    });
  }
  _onError(Object error){
    
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Material(
        child: Scaffold(
          body: Center(
            child: Text(nativeTitle),
          ),
        ),
      ),
    );
  }
}
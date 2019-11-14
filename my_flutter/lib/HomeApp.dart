
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget{

  MyHomePage({Key key,this.title}):super(key:key);

  final String title;

  @override
  _MyHomePageState createState() =>new _MyHomePageState();

}
class _MyHomePageState extends State<MyHomePage>{

  // 创建一个给native的channel (类似iOS的通知）
  static const methodChanel = const MethodChannel("com.pages.your/native_get");

  _iOSPushVC() async{
    await methodChanel.invokeMethod("iOSFlutter","参数");
  }

  _iOSPushVC1() async{
    Map<String,dynamic> map = {"code":200,"data":[1,2,3]};
    await methodChanel.invokeMethod("iOSFlutter1",map);
  }

  _iOSPushVC2() async{

    dynamic result;
    try{
      result = await methodChanel.invokeMethod("iOSFlutter2");
    }on PlatformException{
      result = "error";
    }
    if (result is String){
      print(result);
      showModalBottomSheet(context: context, builder: (BuildContext context){
        return new Container(
          child: new Center(
            child: new Text(result,style: new TextStyle(color: Colors.blue),textAlign: TextAlign.center,),
          ),
          height: 40.0,
        );
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlatButton(onPressed: (){
              _iOSPushVC();
            }, child: new Text("跳转ios新界面，参数是字符串")),

            new FlatButton(onPressed: (){
              _iOSPushVC1();
            }, child: new Text("传参，参数是map，看log")),

            new FlatButton(onPressed: (){
              _iOSPushVC2();
            }, child: new Text("接收客户端相关内容")),
          ],
        ),
      ),
    );

  }
}
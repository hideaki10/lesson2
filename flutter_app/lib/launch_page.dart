


import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _LaunchPageState();

}

class _LaunchPageState extends State<LaunchPage>{

  String printString = '';
  double moveX = 0;
  double moveY = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('dadwdw'),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                RaisedButton(
                  onPressed: ()=> _launchURL(),
                  child: Text("URL"),
                ),
                RaisedButton(
                  onPressed: ()=> _openMap(),
                  child: Text('MAP'),
                )
            ],
          ),
        ),
      ),
    );
  }


  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openMap() async{
    const url = 'geo:52.32.4.917';
    if(await canLaunch(url)){
      await launch(url);
    }else{
      const url = 'http://maps.apple.com/?ll=52.32.4.917';
      if(await canLaunch(url)){
        await launch(url);
      }else{
        throw 'Could not launh $url';
      }
    }
  }
//  _printMsg(String msg) {
//    setState(() {
//      printString += ' ,${msg}';
//    });
//  }


}



/*
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('dadwdw'),
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: FractionallySizedBox(
          widthFactor: 1,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _printMsg('点击'),
                    onDoubleTap: () => _printMsg("shuangji"),
                    onLongPress: () => _printMsg("changan"),
                    onTapCancel: () => _printMsg("cancel"),
                    onTapUp: (e) =>  _printMsg("songkai"),
                    onTapDown: (e) => _printMsg("anxia"),
                    child: Container(
                      padding: EdgeInsets.all(60),
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      child: Text('点我',style: TextStyle(fontSize: 36,color: Colors.lightBlue),),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
 */

/*
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('如何检测用户手势以及处理点击事件？'),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          body: FractionallySizedBox(
            widthFactor: 1,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _printMsg('点击'),
                      onDoubleTap: () => _printMsg('双击'),
                      onLongPress: () => _printMsg('长按'),
                      onTapCancel: () => _printMsg('取消'),
                      onTapUp: (e) => _printMsg('松开'),
                      onTapDown: (e) => _printMsg('按下'),
                      child: Container(
                        padding: EdgeInsets.all(60),
                        decoration: BoxDecoration(color: Colors.blueAccent),
                        child: Text(
                          '点我',
                          style: TextStyle(fontSize: 36, color: Colors.white),
                        ),
                      ),
                    ),
                    Text(printString)
                  ],
                ),

              ],
            ),
          )),
    );
 */
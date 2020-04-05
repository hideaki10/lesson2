import 'package:flutter/material.dart';
import 'package:flutter_app/app_life_cycle.dart';
import 'package:flutter_app/flutter_widget_lifecycle.dart';
import 'package:flutter_app/launch_page.dart';
import 'package:flutter_app/logo_app.dart';
import 'package:flutter_app/photo_app_page.dart';
import 'package:flutter_app/res_page.dart';
import 'package:flutter_app/statefull_group_page.dart';
import 'flutter_layout_page.dart';
import 'gesture_page.dart';

void main() => runApp(DynamicTheme());

class DynamicTheme extends StatefulWidget {
  @override
  _DynamicThemeState createState() => _DynamicThemeState();
}

class _DynamicThemeState extends State<DynamicTheme> {

  Brightness _brightness = Brightness.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        //fontFamily: 'Anton',
        brightness: _brightness,
        primarySwatch: Colors.blue,

      ),
      routes: <String, WidgetBuilder>{
        'ful': (BuildContext context) => StatefulGroup(),
        'layout': (BuildContext context) => FlutterLayoutPage(),
        'gensture': (BuildContext context) => GesturePage(),
        'respage': (BuildContext context) => ResPage(),
        'lanuch': (BuildContext context) => LaunchPage(),
        'lifecycle': (BuildContext context) => WidgetLifeCycle(),
        'applife': (BuildContext context) => AppLifeCycle(),
        'photo':(BuildContext context) => PhotoAppPage(),
        'logoapp':(BuildContext context) => LogoApp(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('dwdwdw'),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  if(_brightness == Brightness.dark){
                    _brightness = Brightness.light;
                  }else{
                    _brightness = Brightness.dark;
                  }
                });
              },
              child: Text("Theme", style: TextStyle(fontFamily: 'Anton'),),
            ),
            RouterNavigator(),
          ],
        ),
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      routes: <String,WidgetBuilder>{
//        'ful':(BuildContext context) => StatefulGroup(),
//        'layout':(BuildContext context) => FlutterLayoutPage(),
//        'gensture': (BuildContext context) => GesturePage(),
//        'respage':(BuildContext context) => ResPage(),
//        'lanuch':(BuildContext context) => LaunchPage(),
//        'lifecycle':(BuildContext context) => WidgetLifeCycle(),
//        'applife':(BuildContext context) => AppLifeCycle(),
//      },
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('dwdwdw'),
//          leading: GestureDetector(
//            onTap: (){
//              Navigator.pop(context);
//            },
//            child: Icon(Icons.arrow_back),
//          ),
//        ),
//        body: RouterNavigator(),
//      ),
//    );
//  }
//}

class RouterNavigator extends StatefulWidget {
//  RouterNavigator({Key key, this.title}) : super(key: key);
//
//  // always marked "final".
//
//  final String title;

  @override
  _RouterNavigatorState createState() => _RouterNavigatorState();
}

class _RouterNavigatorState extends State<RouterNavigator> {
  // int _counter = 0;

//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
  bool byName = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );

    return Container(
      child: Column(
        children: <Widget>[
          SwitchListTile(
              title: Text('${byName ? '' : 'No'}tansfor router'),
              value: byName,
              onChanged: (value) {
                setState(() {
                  byName = value;
                });
              }),
          _item("fullapke", StatefulGroup(), 'ful'),
          _item("flutterlayout", FlutterLayoutPage(), 'layout'),
          _item("如何检测用户手势以及处理点击事件", GesturePage(), 'gensture'),
          _item("fss", ResPage(), 'respage'),
          _item("ditt", LaunchPage(), 'lanuch'),
          _item("lifcuce", WidgetLifeCycle(), 'lifecycle'),
          _item("applife", AppLifeCycle(), 'applife'),
          _item("photo", PhotoAppPage(), 'photo'),
          _item("logoapp", LogoApp(), 'logoapp'),
        ],
      ),
    );
  }

  _item(String title, page, String routeName) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          if (byName) {
            Navigator.pushNamed(context, routeName);
          } else {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => page));
          }
        },
        child: Text(title),
      ),
    );
  }
}

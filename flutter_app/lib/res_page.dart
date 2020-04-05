import 'package:flutter/material.dart';

///StatefulWidget与基础组件
class ResPage extends StatefulWidget {
  @override
  _ResPage createState() => _ResPage();
}

class _ResPage extends State<ResPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20);
    return MaterialApp(
      title: 'StatefulWidget与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/5ienarikhmc.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

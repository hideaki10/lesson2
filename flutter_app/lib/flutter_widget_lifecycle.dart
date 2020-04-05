import 'package:flutter/material.dart';

class WidgetLifeCycle extends StatefulWidget {
  @override
  _WidgetLifeCycle createState() => _WidgetLifeCycle();
}

class _WidgetLifeCycle extends State<WidgetLifeCycle> {
  int _count = 0;

  @override
  //初期化
  void initState() {
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        leading: BackButton(),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: Text(
                "sdad",
                style: TextStyle(fontSize: 21),
              ),
            ),
            Text(_count.toString()),
          ],
        ),
      ),
    );


  }

  @override
  void didUpdateWidget(WidgetLifeCycle oldWidget) {

    print("---did update ");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print("didchange");
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    print("deactice");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }


}

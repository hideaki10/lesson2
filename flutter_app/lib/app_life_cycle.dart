import 'package:flutter/material.dart';

class AppLifeCycle extends StatefulWidget {
  @override
  _AppLifeCycleState createState() => _AppLifeCycleState();
}

class _AppLifeCycleState extends State<AppLifeCycle> with WidgetsBindingObserver{





  @override
  //初期化
  void initState() {
   WidgetsBinding.instance.addObserver(this);
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter AppBar'),
        leading: BackButton(),
      ),
      body: Container(
        child: Text("dddd"),
      ),
    );


  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {


    super.didChangeAppLifecycleState(state);

    print("state = $state" );
    if(state == AppLifecycleState.paused){
      print("bankend");
    }else if (state == AppLifecycleState.resumed){
      print("front");
    }else if (state == AppLifecycleState.inactive){
      print("instave");
    }
  }

  @override
  void didUpdateWidget(AppLifeCycle oldWidget) {

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
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

}

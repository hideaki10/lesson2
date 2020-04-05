import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class LogoApp extends StatefulWidget {
  @override
//  State<StatefulWidget> createState() {
//    return _LogoAppState();
//  }
  _LogoAppState createState() => _LogoAppState();
}


//class AnimatedLogo extends AnimatedWidget{
//
//  AnimatedLogo({Key key,Animation<double> animation}):
//      super(key:key,listenable: animation);
//
//  @override
//  Widget build(BuildContext context) {
//    final Animation<double> animation = listenable;
//    return Center(
//      child: Container(
//        margin: EdgeInsets.symmetric(vertical: 10),
//        height: animation.value,
//        width: animation.value,
//        child: FlutterLogo(),
//      ),
//    );
//  }
//
//}


class LogoWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: FlutterLogo(),
    );
  }

}

class GrowTransition extends StatelessWidget{

   final Widget child;
   final Animation<double> animation;


   GrowTransition({this.child, this.animation});


   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnimatedBuilder(
        animation: animation,
        builder: (context,child) => Container(
          height: animation.value,
          width: animation.value,
          child: child,
        ),
      child: child,
    );
  }

}


class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
//  AnimationStatus animationState;
//  double animationValue;

  @override
  void initState() {
    super.initState();
    //controller = AnimationController(vsync: this, duration: Duration(seconds: 200));
    controller = AnimationController(duration: Duration(seconds: 2),vsync: this);

    /*controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);*/
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
//      ..addListener(() {
//        setState(() {
//          animationValue = animation.value;
//        });
//      })
//      ..addStatusListener((AnimationStatus state) {
//        setState(() {
//          animationState = state;
//        });
//      });
  }

  /* void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // #docregion addListener
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          animationValue = animation.value;
        });
        // #docregion addListener
      })
      ..addStatusListener((AnimationStatus state) {
        setState(() {
          animationState = state;
        });
      });
    // #enddocregion addListener
  }

*/

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GrowTransition(animation: animation,child: LogoWidget(),);
    //return AnimatedLogo(animation: animation,);

//      Container(
//      margin: EdgeInsets.only(top: 50),
//      child: Column(
//        children: <Widget>[
//          GestureDetector(
//            onTap: () {
//              controller.reset();
//              controller.forward();
//            },
//            child: Text(
//              'Start',
//              textDirection: TextDirection.ltr,
//            ),
//          ),
//          Text(
//            'State' + animationState.toString(),
//            textDirection: TextDirection.ltr,
//          ),
//          Text(
//            'Value' + animationValue.toString(),
//            textDirection: TextDirection.ltr,
//          ),
//          Container(
//            height: animation.value,
//            width: animation.value,
//            child: FlutterLogo(),
//          ),
//        ],
//      ),
//    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/*class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  AnimationStatus animationState;
  double animationValue;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    // #docregion addListener
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          animationValue = animation.value;
        });
        // #docregion addListener
      })
      ..addStatusListener((AnimationStatus state) {
        setState(() {
          animationState = state;
        });
      });
    // #enddocregion addListener
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              controller.reset();
              controller.forward();
            },
            child: Text('Start', textDirection: TextDirection.ltr),
          ),
          Text('State:' + animationState.toString(),
              textDirection: TextDirection.ltr),
          Text('Value:' + animationValue.toString(),
              textDirection: TextDirection.ltr),
          Container(
            height: animation.value,
            width: animation.value,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}


 */

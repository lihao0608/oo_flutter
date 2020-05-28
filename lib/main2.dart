import 'package:flutter/material.dart';
import 'package:ooflutter/main.dart';

void main() => runApp(MyApp2());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("哈哈哈"),
        ),
        body: Center(
          child: Text(
            "我很帅!",
          ),
        ),
      ),
    );
  }
}

class MyApp2 extends StatefulWidget {
  @override
  _MyApp2State createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  String data = "我好帅";

  _MyApp2State() {
//    Future ：  Event队列
    Future.delayed(Duration(seconds: 3)).then((s) {
      debugPrint("111111111");

      this.data = "你很帅";
      setState(() {
        debugPrint("2222222222");
      });
    });

//    不允许在构造方法中setState 因为State 都没有怎么刷新
//    setState(() {
//      debugPrint("2222222222");
//    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("build");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("哈哈哈"),
        ),
        body: Center(
          child: Text(
            data,
          ),
        ),
      ),
    );
  }
}

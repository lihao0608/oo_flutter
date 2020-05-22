import 'dart:io';
import 'dart:isolate';

void main() {
  var receivePort = new ReceivePort();
  receivePort.listen((t) {
    print(t);
//    微任务队列插队
    Future.microtask(() {
      print("微任务执行4");
    });
  });
//  在微任队列中提交一个任务

//  Future.microtask((){
//    print("微任务执行");
//    sleep(Duration(seconds: 10));
//  });

  receivePort.sendPort.send("发送消息给消息接收器");
//
//  Future.microtask((){
//    print("微任务执行2");
//  });

  receivePort.sendPort.send("发送消息给消息接收器2");

//
//  Future.microtask((){
//    print("微任务执行3");
//  });

  receivePort.sendPort.send("发送消息给消息接收器3");

//  微任务队列会不会插队
}

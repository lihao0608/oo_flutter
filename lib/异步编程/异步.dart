import 'dart:io';
import 'dart:isolate';

import 'dart:math';

int i;

void main() {
  i = 10;
  //创建一个消息接收器
  var receivePort = new ReceivePort();
  //将消息接收器当中的发送器 发给子isolate
  Isolate.spawn(entryPoint, receivePort.sendPort);
  print(1);
  receivePort.listen((t) {
    print("等待");
    //接收到了子isolate的发送器
    if (t is SendPort) {
    } else {
      print(t);
    }
  });
  sleep(Duration(seconds: 10));
//  receivePort.sendPort.send("1");
//  receivePort.sendPort.send("2");
//  receivePort.sendPort.send(1);
//  receivePort.close();
}

void entryPoint(SendPort sendPort) {
//  print(message);
//  print(i);
//  sleep(Duration(seconds: 3));

//  sendPort.send("11111");
  var receivePort = new ReceivePort();
  var sendPort2 = receivePort.sendPort;
  sendPort.send(sendPort2);

  receivePort.listen((t) {});
}

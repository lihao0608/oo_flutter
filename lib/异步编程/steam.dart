import 'dart:io';

void main() {
  Stream<List<int>> stream = new File(r"/Users/lihao/Desktop/1.rtf").openRead();

//  两个订阅者会报错
//  stream.listen((s){
//    print(1);
//  });

//  stream.listen((s){
//
//  });

//广播模式 可以多订阅
  var broadcastStream = stream.asBroadcastStream();
  broadcastStream.listen((_){

  });

  broadcastStream.listen((_){

  });
  broadcastStream.listen((_){

  });
}

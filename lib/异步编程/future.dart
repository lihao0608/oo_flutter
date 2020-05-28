import 'dart:io';

void main() {
  Future f = Future.delayed(Duration(seconds: 3));
//future 的执行过程  通过then 可以获取
  f.then((t) {
    print(t);
  });

  new File(r"/Users/cyp/Desktop/11.rtf").readAsString().then((String s) {
    print(s);
  }).catchError((s, t) {});

  Future.delayed(Duration(seconds: 5));
}

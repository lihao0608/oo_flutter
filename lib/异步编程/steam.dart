import 'dart:io';

void main() {
  Stream<List<int>> stream = new File(r"/Users/cyp/Desktop/1.rtf").openRead();

  stream.listen((s){
    print(1);
  });
}

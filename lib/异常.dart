void test() {
//  throw new Exception("1111");
  throw 111;
}

void main() {
  try {
    test();
  } on Exception catch (e) {
    print(e.runtimeType);
  } on int catch (e) {
    print(111111111);
  }
  on String catch (e) {
    print("string");
  }on Function catch(e){
    
  }
}

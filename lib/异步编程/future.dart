void main() {
  Future f = Future.delayed(Duration(seconds: 3));
//future 的执行过程  通过then 可以获取
  f.then((t) {
    print(t);

  });
}


//可选位置参数
void fun([int i=1, int j=2]) {
print(i);
print(j);
}
//可选命名参数
void fun1({int i=1, int j=10}) {
  print(i);
  print(j);
}

void main() {
//  如果想给j传值 就必须保证要给i传值因为位置！！！
  fun(10,1);
  fun1(j:10);
//不需要在像java一样 写一大堆对的重载函数 并且能够提供参数默认值
}

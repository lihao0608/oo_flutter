class Point {
  int _x;
  int y;

  Point(this._x, this.y);

//  命名构造方法
  Point.X(this._x);

//  参数初始化列表  初始化你类当中的属性  可以不写方法体
  Point.fromMap(Map map)
      : _x = map['x'],
        y = map['y'];
}

//重定向构造方法
class View {
  View(int context, int attar);

  View.a(int context) : this(context, 0);
}

class ImmutabelPoint {
  final int x;
  final int y;

//常亮构造方法
  const ImmutabelPoint(this.x, this.y);
}



//工厂构造方法
class Manager {

  static Manager _instance;
  factory Manager.getInstance() {

    if(_instance == null){
      _instance=new Manager._newInstance();
    }
    return _instance;
  }
//  static Manager get1() {
//    return new Manager();
//  }

  Manager._newInstance();
}


void main() {
  //使用new 来创建 常量构造方法 对象和普通的一样
//  var p1=new ImmutabelPoint(1, 1);
//  var p2=new ImmutabelPoint(1, 1);

//使用const 来创建多个对象，传递参数一样  表示这几个对象是同一个编译期常量 对象 （必须定义常量构造方法）
  var p1 = const ImmutabelPoint(1, 1);
  var p2 = const ImmutabelPoint(1, 2);
  print(p1.hashCode == p2.hashCode);
  print(p1 == p2);
  new Manager.getInstance();
//  new Manager._newInstance();
}


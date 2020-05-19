class Point {
  int _x;
  int _y;

  int get x => _x;

  set x(int value) {
    _x = value;
  }

  int get y => _y;

  set y(int value) {
    _y = value;
  }

//  操作符重载
  Point operator +(Point other) {
    var point = new Point();
    point.x = _x + other.x;
    return point;
  }
}

void main() {
  var point = new Point();

  point.y = 10;
  print(point.y);
  var p1 = Point();
  var p2 = Point();
  p1.x = 10;
  p2.x = 20;

  var p3 = p1 + p2;
  print(p3.x);
}

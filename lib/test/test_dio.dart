import 'package:dio/dio.dart';

void main() async {
  var dio = new Dio();
  Response response = await dio.get("https://www.wanandroid.com/banner/json");
}

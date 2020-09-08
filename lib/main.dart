import 'package:flutter/material.dart';
import 'ui/page/page_article.dart';
// import "package:signalr_flutter/signalr_flutter.dart";
//
void main() => runApp(new ArticleApp());

class ArticleApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar:  AppBar(
          title:  Text(
            '文章',
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: ArticlePage(),
      ),
    );
  }
}

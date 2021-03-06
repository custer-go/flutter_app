import 'package:flutter/material.dart';
import 'pages/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        debugShowCheckedModeBanner: false, // 去除 debug 图标
        theme: ThemeData(
          // 设置主题(主要颜色)
          primaryColor: Colors.pinkAccent,
        ),
        home: IndexPage(),
      ),
    );
  }
}

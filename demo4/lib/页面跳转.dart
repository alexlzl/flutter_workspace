import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: '一个Flutter应用', home: HomePage(), routes: {
    '/detail': (BuildContext context) => DetailPage(),
    '/home': (BuildContext context) => HomePage()
  }));
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text('详情页，点击跳转首页',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    decoration: TextDecoration.none))));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/detail');
            },
            child: Text('首页，点击跳转详情页',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    decoration: TextDecoration.none))));
  }
}

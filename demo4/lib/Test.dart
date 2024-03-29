import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(Screen());
 class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

 class _ScreenState extends State<Screen> {
  List<Widget> widgets = [
    StatelessContainer(),
    StatelessContainer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgets,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchWidget,
        child: Icon(Icons.undo),
      ),
    );
  }

  switchWidget(){
    widgets.insert(0, widgets.removeAt(1));
    setState(() {});
  }
}
class StatelessContainer extends StatelessWidget {
  final Color color = const Color(0xFF42A5F5);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
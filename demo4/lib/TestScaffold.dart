import 'package:flutter/material.dart';

void main()=>runApp( AVScaffold());




class AVScaffold extends StatefulWidget{

  @override
  AVScaffoldState createState() => new AVScaffoldState();
}

class AVScaffoldState extends State<AVScaffold> {

  List<String> data = [''];

  Widget _renderList(String val){
    return new Text(val);
  }

  @override
  Widget build(BuildContext context) {
    final textCV = TextEditingController();
    textCV.addListener(() {

    });
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (BuildContext context, int position){
          return _renderList(data[position]);
        },
      ),
      bottomSheet: new Container(
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new TextField(
                controller: textCV,
              ),
            ),
            new RaisedButton(
              child: new Text('发表'),
              onPressed: () {
                setState(() {
                  data.add(textCV.text);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
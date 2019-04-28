import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String title;

  DetailPage(this.title);

  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 36.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Text(
          widget.title,
          style: TextStyle(fontSize: 30.0),
        )));
  }
}

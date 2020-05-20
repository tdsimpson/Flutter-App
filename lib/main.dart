import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('My First App'),
            centerTitle: true,
            backgroundColor: Colors.red[600],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.grey[400],
          child: Text('Hello'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: Text('Click'),
            backgroundColor: Colors.red[600],
        ),
    );
  }
}


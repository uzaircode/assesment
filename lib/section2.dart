import 'package:flutter/material.dart';

void main() {
  runApp(RandomName());
}

class RandomName extends StatefulWidget {
  const RandomName() : super();
  @override
  _RandomNameState createState() => _RandomNameState();
}

class _RandomNameState extends State<RandomName>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter listview with json'),
          ), // AppBar
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text('Note Title'),
                      Text('Note Text'),
                    ],
                  ),
                ),
              );
            },
            itemCount: 50,
          )
      ),
    );
  }
}



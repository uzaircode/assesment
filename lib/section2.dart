import 'package:flutter/material.dart';
import 'section2.dart';

void main() {
  runApp(section2());
}

class section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          //Background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: SafeArea(
                  child: Text(
                    "Name",
                  ),
                ),
              ),
              //Image
              Container(
                child: Builder(
                  builder: (context) => SafeArea(
                      child: Column(
                    children: <Widget>[
                      Image.asset(
                        'avatar/1 Male.png',
                        height: 100,
                        width: 100,
                      ),
                    ],
                  )),
                ),
              ),
              //Phone number
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueAccent),
                    color: Colors.white,
                ),
                child: Row(
                  children: const <Widget> [
                    ImageIcon(
                      AssetImage("img/icon_call.png"),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      '0123456789',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              //Email
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  color: Colors.white,
                ),
                child: Row(
                  children: const <Widget> [
                    ImageIcon(
                      AssetImage("img/icon_email.png"),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      'me@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              //Description
              Expanded(
                  child: Material(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 1),
                    ),
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Descriptions",
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

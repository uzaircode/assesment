import 'package:flutter/material.dart';
import 'section2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
              //Image
              Container(
                child: Builder(
                  builder: (context) => SafeArea(
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'img/app_logo.png',
                            height: 100,
                            width: 100,
                          ),
                          Text('Ingenious Assessment'),
                        ],
                      )),
                ),
              ),
              //username
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(AssetImage("img/icon_user.png")),
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter Your Name',
                  ),
                ),
              ),
              //password
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: ImageIcon(AssetImage("img/icon_password.png")),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Your Password',

                  ),
                ),
              ),
              //button
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => section2()),
                    );
                  },
                  child: Text('LOGIN'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Tab(icon: Image.asset("img/icon_user.png")),

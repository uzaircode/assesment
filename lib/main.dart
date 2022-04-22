import 'package:assesment/presentation/screens/section2.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

void main() {
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          //Background image
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  //Image
                  Builder(
                    builder: (context) => SafeArea(
                        child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Image.asset(
                          'img/app_logo.png',
                          height: 150,
                          width: 150,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text('Inglab Assessment',
                            style: TextStyle(
                                color: Color.fromRGBO(142, 142, 147, 1.0),
                                fontWeight: FontWeight.w500,
                                fontSize: 22)
                        ),
                      ],
                    )),
                  ),
                  //username
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: SizedBox(
                      height: 46,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: ImageIcon(AssetImage("img/icon_user.png"),
                              color: Color.fromRGBO(174, 174, 178, 1.0)),
                          border: OutlineInputBorder(),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(174, 174, 178, 1.0),
                              decoration: TextDecoration.none),
                          hintText: 'Enter Your Name',
                        ),
                      ),
                    ),
                  ),
                  //password
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: SizedBox(
                      height: 46,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: ImageIcon(
                              AssetImage("img/icon_password.png"),
                              color: Color.fromRGBO(174, 174, 178, 1.0)),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(174, 174, 178, 1.0),
                              decoration: TextDecoration.none),
                          hintText: 'Enter Your Password',
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(_obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        obscureText: _obscureText,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: TextButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Color.fromRGBO(48, 176, 199, 1.0),
                      side: BorderSide(width: 2.0, color: Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Section2()),
                      );
                    },
                    child:
                    Text('LOGIN',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                    ),
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

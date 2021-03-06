import 'package:assesment/presentation/screens/section2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assesment/data/data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;

  const UserDetailsPage({required this.user});

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration:
          BoxDecoration(
            image: DecorationImage(
              image: AssetImage("img/background.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        // CupertinoIcons
        title: Text(user.name),
        foregroundColor: Color.fromRGBO(85, 85, 85, 1.0),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                // Profile picture's border frame
                color: Color.fromRGBO(229, 229, 234, 1.0),
                height: 120,
                width: 120,
                padding: EdgeInsets.all(2),
                child: Hero(
                  tag: user.id,
                  child: Image.network(
                    user.image,
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromRGBO(89, 179, 201, 1.0),
                  width: 2,
                ),
              ),
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    AssetImage("img/icon_call.png"),
                    color: Color.fromRGBO(194, 194, 198, 1.0),
                  ),
                  Expanded(
                    child: Text(
                      user.phone,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(85, 85, 85, 1.0)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Color.fromRGBO(89, 179, 201, 1.0),
                  width: 2,
                ),
              ),
              child: Row(
                children: <Widget>[
                  ImageIcon(
                    AssetImage("img/icon_email.png"),
                    color: Color.fromRGBO(194, 194, 198, 1.0),
                  ),
                  Expanded(
                    child: Text(
                      user.email,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(85, 85, 85, 1.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Material(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Color.fromRGBO(229, 229, 234, 1.0), width: 2),
                  ),
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Descriptions",
                      hintStyle:
                      TextStyle(color: Color.fromRGBO(189, 189, 194, 1.0)),
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
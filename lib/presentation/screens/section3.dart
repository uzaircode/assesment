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
        backgroundColor: Color(0x44000000),
        elevation: 0,
        title: Text(user.name),
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
              height: 16.0,
            ),
            Center(
              child:
              Hero(
                tag: user.id,
                child: Image.network(
                  user.image,
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            SizedBox(
              height: 22.0,
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  // ImageIcon(
                  //   AssetImage("img/icon_email.png"),
                  // ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    user.phone,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2,
                ),
                color: Colors.white,
              ),
              child: Row(
                children: <Widget>[
                  // ImageIcon(
                  //   AssetImage("img/icon_email.png"),
                  // ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    user.email,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              //ejah sini
              child: Expanded(
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
            ),
          ],
        ),
      ),
    );
  }
}

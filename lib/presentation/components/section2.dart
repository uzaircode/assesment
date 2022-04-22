import 'package:flutter/material.dart';
import 'package:assesment/data/data_model.dart';
import 'package:assesment/presentation/screens/section3.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile({required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            left: BorderSide(
                width: 2.0, color: Color.fromRGBO(229, 229, 234, 1.0)),
            right: BorderSide(
                width: 2.0, color: Color.fromRGBO(229, 229, 234, 1.0)),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ListTile(
              leading: Hero(
                tag: user.id,
                child: Image.network(
                  user.image,
                  height: 60,
                  width: 60,
                ),
              ),
              title: SizedBox(
                width: 50,
                child: Text(user.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
              subtitle: SizedBox(
                width: 50,
                child: Text(user.phone,
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetailsPage(user: user)));
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Divider(
                thickness: 2.0,
                color: Color.fromRGBO(229, 229, 234, 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
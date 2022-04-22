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
            left: BorderSide(width: 1.0, color: Colors.grey),
            right: BorderSide(width: 1.0, color: Colors.grey),
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
                  height: 100,
                  width: 100,
                ),
              ),
              title: Text(
                  user.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  )
              ),
              subtitle: Text(
                  user.phone,
                  style: TextStyle(
                    fontSize: 17,
                  )
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetailsPage(user: user)));
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0,),
              child: Divider(
                thickness: 2.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

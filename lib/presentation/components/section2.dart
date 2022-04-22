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
              title: Text(user.name),
              subtitle: Text(user.phone),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetailsPage(user: user)));
              },
            ),
            Divider(
              thickness: 2.0,
            ),
          ],
        ),
      ),
    );
  }
}

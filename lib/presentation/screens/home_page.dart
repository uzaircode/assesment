import 'package:flutter/material.dart';
import 'package:assesment/data/data_model.dart';
import 'package:assesment/domain/repository.dart';
import 'package:assesment/presentation/components/section2.dart';

import '../../data/data_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<User> _users = <User>[];
  List<User> _usersDisplay = <User>[];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUsers().then((value) {
      setState(() {
        _isLoading = false;
        _users.addAll(value);
        _usersDisplay = _users;
        print(_usersDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0
                    ? _searchBar()
                    : UserTile(user: _usersDisplay[index - 1]);
              } else {
                return Text("");
              }
            },
            itemCount: _usersDisplay.length + 1,
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersDisplay = _users.where((u) {
              var fName = u.name.toLowerCase();
              var job = u.phone.toLowerCase();
              return fName.contains(searchText) ||
                  job.contains(searchText);
            }).toList();
          });
        },

        // controller: _textController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

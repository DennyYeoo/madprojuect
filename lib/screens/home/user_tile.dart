import 'package:fprojecta/models/userdata.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final user userData;

  UserTile({this.userData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green[100],
          ),
          title: Text(userData.name),
          subtitle: Text('is ${userData.age} years old'),
        ),
      ),
    );
  }
}

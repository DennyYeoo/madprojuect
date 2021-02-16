import 'package:fprojecta/screens/home/settings_form.dart';
import 'package:fprojecta/screens/home/user_list.dart';
import 'package:fprojecta/services/auth.dart';
import 'package:fprojecta/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fprojecta/models/userdata.dart';

class FirstScreen extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<user>>.value(
      value: DatabaseService().userData,
      child: Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          title: Text('Profiles'),
          backgroundColor: Colors.green[400],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () => _showSettingsPanel(),
                icon: Icon(Icons.settings),
                label: Text('Settings'))
          ],
        ),
        body: UserList(),
      ),
    );
  }
}

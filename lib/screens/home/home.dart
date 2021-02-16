import 'package:fprojecta/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:fprojecta/services/database.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('HealthWide'),
            backgroundColor: Colors.green[400],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.person,
                  color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.info,
                  color: Colors.blueAccent,
                )),
                Tab(icon: Icon(Icons.calculate)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Icon(Icons.directions_car),
              //  Icon(Icons.directions_transit),
              // Icon(Icons.directions_bike),
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}

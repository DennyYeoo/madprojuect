import 'package:flutter/material.dart';
import 'package:fprojecta/screens/authenticate/authenticate.dart';
import 'package:fprojecta/screens/wrapper.dart';
import 'package:fprojecta/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:fprojecta/models/user.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

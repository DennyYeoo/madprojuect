import 'package:flutter/material.dart';
import 'package:fprojecta/models/user_location.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Scaffold(
        body: Center(
      child: Text(
          'Location: Lat:${userLocation.latitude}, Long: ${userLocation.longitude}'),
    ));
  }
}

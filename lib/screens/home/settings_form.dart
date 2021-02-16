import 'package:flutter/material.dart';
import 'package:fprojecta/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formkey = GlobalKey<FormState>();
  final List<String> nationality = ['Singaporean', 'PR', 'Foriegner'];

  String _currentName;
  String _currentAge;
  String _currentNationality;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text('Update your user data', style: TextStyle(fontSize: 18.0)),
          SizedBox(
            height: 20.0,
          ),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentName = val),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentAge = val),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val) => val.isEmpty ? 'Please enter a name' : null,
            onChanged: (val) => setState(() => _currentNationality = val),
          ),
          SizedBox(height: 20),
          RaisedButton(
            color: Colors.red[400],
            child: Text(
              'update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentAge);
              print(_currentNationality);
            },
          )
        ],
      ),
    );
  }
}

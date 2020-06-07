import 'package:flutter/material.dart';
import 'package:brew_crew/shared/constants.dart';

class SettingsForm extends StatefulWidget {
  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4'];
  String _currentName;
  String _currentSugars;
  int _currentStrength;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text(
            'Update your brew settings.',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (value) => value.isEmpty ? 'Please enter a name' : null,
            onChanged: (value) => setState(() => _currentName = value),
          ),
          SizedBox(height: 20.0),
          DropdownButtonFormField(
            decoration: textInputDecoration,
            value: _currentSugars ?? '0',
            items: sugars.map(
              (sugar) {
                return DropdownMenuItem(
                  value: sugar,
                  child: Text('$sugar sugars'),
                );
              },
            ).toList(),
            onChanged: (value) => setState(() => _currentSugars = value),
          ),
          SizedBox(height: 20.0),
          Slider(
            value: (_currentStrength ?? 100).toDouble(),
            min: 100.0,
            max: 900.0,
            divisions: 8,
            onChanged: (value) => setState(
              () => _currentStrength = value.round(),
            ),
            inactiveColor: Colors.brown[_currentStrength ?? 100],
            activeColor: Colors.brown[_currentStrength ?? 100],
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            color: Colors.red[700],
            child: Text(
              'Update',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () async {
              print(_currentName);
              print(_currentSugars);
              print(_currentStrength);
            },
          ),
        ],
      ),
    );
  }
}

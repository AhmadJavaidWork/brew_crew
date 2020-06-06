import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brew Crew'),
        backgroundColor: Colors.red[900],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            label: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}

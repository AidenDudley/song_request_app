import 'package:flutter/material.dart';

import 'Tutorials.dart';
import 'package:provider/provider.dart';
import 'auth.dart';

class SettingsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Settings'),
        backgroundColor: Colors.indigo[900],
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Tutorials',
                style: TextStyle(fontSize: 20),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutorialsPage())
                  );
                },
            ),

             SizedBox(height: 20.0),
            RaisedButton(
                child: Text("LOGOUT"),
                onPressed: () async {
                  await Provider.of<AuthService>(context).logout();

                  //Navigator.pushReplacementNamed(context, "/");
                })

            


          ],
        ),
      ),
    );
  }
}
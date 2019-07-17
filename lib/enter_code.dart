import 'package:flutter/material.dart';
import 'Settings.dart';
import 'user_page.dart';

class EnterCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.indigo[900],
        actions: <Widget> [
            new IconButton(
              
              icon: new Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SettingsPage())
                  );
              }
            )
           
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[

            new Container(
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Enter code'
                ),
              ),
            ),

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Enter',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserPage())
                  );
                },
            ),
          ],
        ),
      )
    );
  }
}


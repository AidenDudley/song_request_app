import 'package:flutter/material.dart';
import 'package:song_request_app/dj_pages/suggestions.dart';

import 'live.dart';
import '../Settings.dart';

class DJPage extends StatelessWidget{
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

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Go Live',
                style: TextStyle(fontSize: 20),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LivePage())
                  );
                },
            ),

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Edit Suggestions List',
                style: TextStyle(fontSize: 20),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TodoList())
                  );
                },
            ),

          ],
        ),
      )
    );
  }
}
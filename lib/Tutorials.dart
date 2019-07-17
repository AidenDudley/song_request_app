import 'package:flutter/material.dart';

class TutorialsPage extends StatelessWidget {

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

            new Material(
              child: Text('Unfortunately, we do not have tutorials at the moment.')
            ),

           

            


          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'dj_homepage.dart';
import '../Settings.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Login Screen'),
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

            SizedBox(
              height: 200.0,
            ),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.indigo[900],
                  width: 7.0,
                )
              ),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Username'
                ),
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.indigo[900],
                  width: 7.0,
                )
              ),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Email'
                )
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.indigo[900],
                  width: 7.0,
                )
              ),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Password'
                )
              ),
            ),

            new Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              decoration: new BoxDecoration(
                border: new Border.all(
                  color: Colors.indigo[900],
                  width: 7.0,
                )
              ),
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Confirm Password'
                )
              ),
            ),

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DJPage())
                  );
                },
            ),


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dj_pages/login.dart';
import 'unloggedin_Settings.dart';
import 'sign_up.dart';
import 'enter_code.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Song Request App',
      home: MyHomePage(title: 'Song Request App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
        title: Text(widget.title),
        backgroundColor: Colors.indigo[900],
        actions: <Widget> [
            new IconButton(
              
              icon: new Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => UnLoggedInSettingsPage())
                  );
              }
            )
           
        ],
      ),
      body: Center(
        
        

        child: Column(
          
          children: <Widget>[

            Image.asset("assets/logo.png"),

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              
              child: const Text(
                'Play Music',
                style: TextStyle(fontSize: 20),
              ), 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EnterCodePage())
                  );
                },
            ),

            new MaterialButton(
              color: Colors.indigo[900],
              textColor: Colors.white,
              minWidth: 200,
              child: Text(
                'Log In',
                style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login())
                  );
                },
            ),

            new MaterialButton(
              color: Colors.indigo[900],
              textColor: Colors.white,
              minWidth: 200,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp())
                  );
                },
            ),

          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Settings.dart';
import 'package:audioplayers/audio_cache.dart';
import 'suggestions.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class LivePage extends StatelessWidget {

  void playSound(int songNumber) {
    final player = AudioCache();
    player.play('song$songNumber.mp3');
  }

  Expanded  songPlay({int songNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(songNumber);
        }, child: Text('Click Me'),
      ),
    );
  }

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
      body: SafeArea(
        child: Column(
          children: <Widget>[

            
              
            

            new Container(
              child: songPlay(songNumber: 1),
            ),
            
            new Container(
              child: songPlay(songNumber: 2),
            ),

            new Container(
              child: songPlay(songNumber: 3),
            ),
            


            new Container(
              child: TextField(
                decoration: new InputDecoration(
                  hintText: 'Enter your suggestion'
                ),
              ),
            ),

            new MaterialButton(
              minWidth: 200,
              color: Colors.indigo[900],
              textColor: Colors.white,
              child: Text(
                'Edit Song Suggestions',
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



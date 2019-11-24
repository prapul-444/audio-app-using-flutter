import 'package:flutter/material.dart';
import 'Number.dart';
 import 'package:audioplayers/audio_cache.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

 AudioCache ap=AudioCache();
 List<Number> nl =[
   Number("one", "one.wav", Colors.blue),
   Number("two", "two.wav", Colors.green),
   Number("three", "three.wav", Colors.yellow),
   Number("four", "four.wav", Colors.red),
   Number("five", "five.wav", Colors.purple),
   Number("six", "six.wav", Colors.pink),
   Number("seven", "seven.wav", Colors.brown),
   Number("eight", "eight.wav", Colors.orange),
   Number("nine", "nine.wav", Colors.amber),
   Number("ten", "ten.wav", Colors.indigo),

 ];
play(String uri){
  ap.play(uri);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('audio'),

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0
                ),
                itemCount: 10,
                itemBuilder: (context,i)=>SizedBox(
                  width: 50.0,
                  height: 30.0,
                  child:RaisedButton(
                    onPressed: (){
                      this.play(nl[i].au);
                    },
                    child: Text(nl[i].bt),
                    color: nl[i].bc,
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
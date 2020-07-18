import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.red,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black54, Colors.red],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 60, 0, 50),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Calling...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16),),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Text('Siya Kholer', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 30),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text('Home +91 847389293', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CircleAvatar(
                  radius: 70,
                  child: ClipOval(
                    child: Image.asset('images/girl.jpg', height: 150, width: 150, fit: BoxFit.cover,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.add, color: Colors.grey, size: 40),
                        Text('Add call', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.videocam, color: Colors.grey, size: 40),
                        Text('Video cal', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.bluetooth, color: Colors.white, size: 40),
                        Text('Bluetooth', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.volume_up, color: Colors.green, size: 40),
                        Text('Speaker', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.mic_off, color: Colors.grey, size: 40),
                        Text('Mute', style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.dialpad, color: Colors.white, size: 40),
                        Text('Keypad', style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Container(
                  height: 70, width: 70,
                  child: Icon(Icons.phone, color: Colors.red, size: 40,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35))
                  ),
                ),
              ),

              
              
              Expanded(child: Container())

            ],
          ),
        ),
      )
    );
  }
}

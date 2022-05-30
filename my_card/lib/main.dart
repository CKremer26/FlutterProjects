// ignore_for_file: prefer_const_constructors
import 'package:my_card/aboutme.dart' ;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
  }

  @override
  Widget build(BuildContext context) {
    void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => AboutMe()));
  }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                width: 100,
                height: 100,
                child: CircleAvatar(backgroundImage: NetworkImage('https://lh3.googleusercontent.com/a-/AOh14GhbzPhicYRrrXWSdpxIg-6oWeUQXNWA8rp8OuXsPQ=s288-p-rw-no'),)
              ),
              Text('Connor Kremer', style: TextStyle(fontSize: 40, color: Colors.white,),),
              Text('Student', style: TextStyle(fontSize: 20, color: Colors.grey),),
              Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    Icon(Icons.phone_android),
                    Text(' 705-279-6957', style: TextStyle(fontSize: 25)),
                    ],
                  )
                ),
               Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                    Icon(Icons.mail),
                    Text(' 623990@smcdsb.on.ca', style: TextStyle(fontSize: 25)),
                    ],
                  )
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Next Page',
        child: const Icon(Icons.next_plan),  
      ),
     )
    );
  }
}
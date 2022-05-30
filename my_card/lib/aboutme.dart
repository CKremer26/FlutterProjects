import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({ Key? key }) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Text("About me", style: TextStyle(fontSize: 30),)
            ),
            Container(
            margin: const EdgeInsets.fromLTRB(60, 0, 60, 0),
            child: const Text("I was born on October 26, 2005. My hobbies include: Biking, gaming, and walking. My favourite colour is green and my favourite season is Atumn. My favourite subject is science and I want to get into meteorlogy in the future. My favourite fruit is watermelon and I have a fear of spiders.", style: TextStyle(fontSize: 20),)
            )
          ]
         ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          tooltip: "Go back",
          child: const Icon(Icons.house),
          ),
      );
  }
}
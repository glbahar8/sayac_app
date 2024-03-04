import 'package:flutter/material.dart';
import 'package:sayac_app/Persons.dart';
import 'package:sayac_app/Result.dart';

class GameScreen extends StatefulWidget {
  Persons persons;

  GameScreen({required this.persons});

  @override
  State<GameScreen> createState() => _gamescreenState();
}

class _gamescreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Game Screen",
          style: TextStyle(color: Colors.orange),
        )),
        backgroundColor: Color(0xFF0000D6),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                "${widget.persons.ad} - ${widget.persons.yas} - ${widget.persons.boy} - ${widget.persons.bekar}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const result()));
                },
                child: Text(
                  "finished",
                  style: TextStyle(color: Colors.orange, fontSize: 50),
                ))
          ],
        ),
      ),
    );
  }
}

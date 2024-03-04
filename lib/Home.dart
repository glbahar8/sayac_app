import 'package:flutter/material.dart';
import 'package:sayac_app/GameScreen.dart';
import 'package:sayac_app/Persons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int sayac = 0;
  bool kontrol = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(color: Colors.orange),
        )),
        backgroundColor: Color(0xFF0000D6),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "RESULT",
              style: TextStyle(color: Colors.orange, fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    sayac = sayac + 1;
                  });
                },
                child: Text(
                  "CLİCK",
                  style: TextStyle(color: Colors.orange, fontSize: 50),
                )),
            ElevatedButton(
              onPressed: () {
                var persons =
                    Persons(ad: "Bahar", yas: 30, boy: 1.75, bekar: true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GameScreen(persons: persons)));
              },
              child: Text(
                "START",
                style: TextStyle(color: Colors.orange, fontSize: 50),
              ),
            ),
            Visibility(visible: kontrol, child: const Text("HELLO")),
            Text(kontrol ? "HELLO" : "BY BYE "),
            Text("HELLO"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = true;
                  });
                },
                child: Text("STATE 1 true ")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    kontrol = false;
                  });
                },
                child: Text("STATE 2 false ")),
          ],
        ),
      ),
    );
  }
}

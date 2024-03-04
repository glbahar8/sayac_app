import 'package:flutter/material.dart';

class result extends StatefulWidget {
  const result({super.key});

  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Result",
          style: TextStyle(color: Colors.orange),
        )),
        backgroundColor: Color(0xFF0000D6),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "turn back ",
              style: TextStyle(color: Colors.orange, fontSize: 45),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Come back home",
                  style: TextStyle(color: Colors.orange, fontSize: 35),
                ))
          ],
        ),
      ),
    );
  }
}

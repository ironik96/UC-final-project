import 'package:flutter/material.dart';
import 'dart:math';

class rom extends StatefulWidget {
  const rom({super.key});

  @override
  State<rom> createState() => _MyAppState();
}

class _MyAppState extends State<rom> {
  var im = 1;

  void play() {
    im = Random().nextInt(3) + 1;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 175, 253),
        title: Text('Romance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                play();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/images/p_$im.jpg',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
            ),
            Container(
              width: 100,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 202, 241, 240),
                ),
                onPressed: () {
                  play();
                },
                child: Text('shaffel'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
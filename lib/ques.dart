import 'package:butter/ansscreen.dart';
import 'package:butter/hint_screen.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guess the answers of given riddles!"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(dataMap['question1']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const HintScreen(),
                  settings: const RouteSettings(
                      arguments: "This is from Question screen"),
                ),
              );
            },
            child: const Text("click for hint"),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ansscreen(),
                ),
              );
            },
            child: const Text("Show answer"),
          ),
        ],
      ),
    );
  }
}

import 'package:butter/ans2.dart';
import 'package:butter/hint2.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class other_riddle extends StatelessWidget {
  const other_riddle({Key? key}) : super(key: key);

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
            child: Text(dataMap['question2']!),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const hint2(),
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
                  builder: (_) => const ans2(),
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

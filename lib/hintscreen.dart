import 'package:butter/data.dart';
import 'package:flutter/material.dart';

import 'ansscreen.dart';

class HintScreen extends StatelessWidget {
  const HintScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("guess with this hint :)"),
      ),
      body: Column(
        children: [
          Text(data),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(dataMap['hint']!),
          ),
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

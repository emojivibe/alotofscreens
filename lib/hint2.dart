import 'package:butter/data.dart';
import 'package:flutter/material.dart';

import 'ans2.dart';

// ignore: camel_case_types
class hint2 extends StatelessWidget {
  const hint2({Key? key}) : super(key: key);

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
            child: Text(dataMap['hint2']!),
          ),
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

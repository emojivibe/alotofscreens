import 'package:butter/data.dart';
import 'package:flutter/material.dart';
import 'other_riddle.dart';

// ignore: camel_case_types
class ansscreen extends StatelessWidget {
  const ansscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("the answer is echo!"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset(
              dataMap['image']!,
              height: 500,
              width: 500,
            ),
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              dataMap['image2']!,
              height:500,
              width:500,
            ),
          ],
           prototypeItem: const SizedBox(height: 25),
           prototypeItem: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const other_riddle(),
                ),
              );
            },
            child: const Text("go to another riddle"),
          ),
          
        ),
      ),
    );
  }
}

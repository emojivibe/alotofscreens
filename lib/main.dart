import 'package:butter/ques.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FriendsQuiz());

class FriendsQuiz extends StatelessWidget {
  const FriendsQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuestionScreen(),
    );
  }
}

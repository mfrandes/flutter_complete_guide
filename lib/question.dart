import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String
      questioText; // final tels that data will never change once stored

//This is the constructor that receives data from outside
  Question(this.questioText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questioText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

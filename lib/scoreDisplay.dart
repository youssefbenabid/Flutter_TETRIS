import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final int score;
  const ScoreDisplay(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo[800], Colors.blueAccent],
        ),
        border: Border.all(width: 1.0, color: Colors.white),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Score $score',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

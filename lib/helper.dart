import 'package:flutter/material.dart';
import 'dart:math';

import './blocks/block.dart';
import './blocks/iblock.dart';
import './blocks/jblock.dart';
import './blocks/lblock.dart';
import './blocks/sblock.dart';
import './blocks/sqblock.dart';
import './blocks/tblock.dart';
import './blocks/zblock.dart';
import 'gameScreens/gameScreen.dart';

Block getRandomBlock(double BOARD_WIDTH) {
  int randomNr = Random().nextInt(7);
  switch (randomNr) {
    case 0:
      return IBlock(BOARD_WIDTH);
      break;
    case 1:
      return JBlock(BOARD_WIDTH);
      break;
    case 2:
      return LBlock(BOARD_WIDTH);
      break;
    case 3:
      return SBlock(BOARD_WIDTH);
      break;
    case 4:
      return SquareBlock(BOARD_WIDTH);
      break;
    case 5:
      return TBlock(BOARD_WIDTH);
      break;
    case 6:
      return ZBlock(BOARD_WIDTH);
      break;
  }
}

Widget generatePoint(Color color) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Container(
      width: POINT_SIZE,
      height: POINT_SIZE,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
    ),
  );
}

Widget getGameOverText(int score) {
  return Center(
    child: Text(
      'Game Over\nEnd Score: $score',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
          shadows: [
            Shadow(
              color: Colors.black,
              blurRadius: 3.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
    ),
  );
}

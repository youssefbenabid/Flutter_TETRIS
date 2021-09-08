import 'package:flutter/material.dart';

import './actionButton.dart';

import 'gameScreens/gameScreen.dart';

class UserInput extends StatelessWidget {
  final Function onActionButtonPressed;
  UserInput(this.onActionButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ActionButton(
          onClicked: onActionButtonPressed,
          buttonIcon: Icon(Icons.arrow_left),
          nextAction: LastButtonPressed.LEFT,
        ),
        ActionButton(
          onClicked: onActionButtonPressed,
          buttonIcon: Icon(Icons.rotate_right),
          nextAction: LastButtonPressed.ROTATE_RIGHT,
        ),
        ActionButton(
          onClicked: onActionButtonPressed,
          buttonIcon: Icon(Icons.arrow_right),
          nextAction: LastButtonPressed.RIGHT,
        ),
      ],
    );
  }
}
